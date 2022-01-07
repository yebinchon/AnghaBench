
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int MAPR; } ;
struct TYPE_3__ {int DR10; } ;


 TYPE_2__* AFIO ;
 int AFIO_MAPR_SWJ_CFG_JTAGDISABLE ;
 TYPE_1__* BKP ;
 int RTC_BOOTLOADER_FLAG ;

void boardInit(void) {

   AFIO->MAPR |= AFIO_MAPR_SWJ_CFG_JTAGDISABLE;

   BKP->DR10 = RTC_BOOTLOADER_FLAG;
}
