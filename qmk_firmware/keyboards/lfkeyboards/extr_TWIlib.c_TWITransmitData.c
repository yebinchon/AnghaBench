
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_2__ {scalar_t__ mode; void* repStart; } ;


 void* Initializing ;
 scalar_t__ RepeatedStartSent ;
 int TWCR ;
 void* TWDR ;
 TYPE_1__ TWIInfo ;
 int TWIInit () ;
 int TWINT ;
 int TWISendStart () ;
 int TWISendTransmit () ;
 void** TWITransmitBuffer ;
 int TWSTO ;
 scalar_t__ TXBuffIndex ;
 void* TXBuffLen ;
 int _delay_us (int) ;
 int isTWIReady () ;

void TWITransmitData(void *const TXdata, uint8_t dataLen, uint8_t repStart, uint8_t blocking)
{

 while (!isTWIReady()) {_delay_us(1);}

 TWCR = (1 << TWINT)|(1 << TWSTO);
 TWIInit();

 TWIInfo.repStart = repStart;

 TWITransmitBuffer = (uint8_t *)TXdata;
 TXBuffLen = dataLen;
 TXBuffIndex = 0;



 if (TWIInfo.mode == RepeatedStartSent)
 {
  TWIInfo.mode = Initializing;
  TWDR = TWITransmitBuffer[TXBuffIndex++];
  TWISendTransmit();
 }
 else
 {
  TWIInfo.mode = Initializing;
  TWISendStart();
 }
 if(blocking){

  while (!isTWIReady()){_delay_us(1);}
 }
}
