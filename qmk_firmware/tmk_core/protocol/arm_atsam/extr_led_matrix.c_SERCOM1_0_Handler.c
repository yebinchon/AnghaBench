
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ERROR; } ;
struct TYPE_6__ {int reg; TYPE_1__ bit; } ;
struct TYPE_7__ {TYPE_2__ INTFLAG; } ;
struct TYPE_8__ {TYPE_3__ I2CM; } ;


 TYPE_4__* SERCOM1 ;
 int SERCOM_I2CM_INTENCLR_ERROR ;

void SERCOM1_0_Handler(void) {
    if (SERCOM1->I2CM.INTFLAG.bit.ERROR) {
        SERCOM1->I2CM.INTFLAG.reg = SERCOM_I2CM_INTENCLR_ERROR;
    }
}
