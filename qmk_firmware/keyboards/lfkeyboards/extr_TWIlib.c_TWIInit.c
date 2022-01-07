
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int errorCode; scalar_t__ repStart; int mode; } ;


 int F_CPU ;
 int Ready ;
 int TWBR ;
 int TWCR ;
 int TWEN ;
 int TWIE ;
 TYPE_1__ TWIInfo ;
 int TWI_FREQ ;
 scalar_t__ TWSR ;

void TWIInit()
{
 TWIInfo.mode = Ready;
 TWIInfo.errorCode = 0xFF;
 TWIInfo.repStart = 0;

 TWSR = 0;

 TWBR = ((F_CPU / TWI_FREQ) - 16) / 2;

 TWCR = (1 << TWIE) | (1 << TWEN);
}
