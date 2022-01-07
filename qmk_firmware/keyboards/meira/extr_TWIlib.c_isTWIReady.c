
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ mode; int errorCode; } ;


 scalar_t__ Initializing ;
 scalar_t__ Ready ;
 scalar_t__ RepeatedStartSent ;
 int TWCR ;
 TYPE_1__ TWIInfo ;
 int TWIInit () ;
 int TWINT ;




 int TWSTO ;
 int xprintf (char*,int) ;

uint8_t isTWIReady()
{
 if ( (TWIInfo.mode == Ready) | (TWIInfo.mode == RepeatedStartSent) )
 {


  return 1;
 }
 else
 {
  if(TWIInfo.mode == Initializing){
   switch(TWIInfo.errorCode){
          case 128:
              break;
          case 129:

           break;
    case 131:
    case 130:

           xprintf("I2C init error: %d\n", TWIInfo.errorCode);
           TWCR = (1 << TWINT)|(1 << TWSTO);
           TWIInit();
           break;
          default:
           xprintf("Other i2c init error: %d\n", TWIInfo.errorCode);
   }
  }
  return 0;
 }
}
