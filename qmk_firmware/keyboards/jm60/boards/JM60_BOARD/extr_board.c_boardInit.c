
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int MAPR; } ;


 TYPE_1__* AFIO ;
 int AFIO_MAPR_SWJ_CFG_JTAGDISABLE ;

void boardInit(void) {
 AFIO->MAPR |= AFIO_MAPR_SWJ_CFG_JTAGDISABLE;

}
