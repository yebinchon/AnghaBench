
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int HUB_RESET_N; } ;
struct TYPE_4__ {TYPE_1__ bit; } ;


 int DBGC (int ) ;
 int DC_USB_RESET_BEGIN ;
 int DC_USB_RESET_COMPLETE ;
 int SR_EXP_WriteData () ;
 TYPE_2__ sr_exp_data ;
 int wait_us (int) ;

void USB_reset(void) {
    DBGC(DC_USB_RESET_BEGIN);


    sr_exp_data.bit.HUB_RESET_N = 0;
    SR_EXP_WriteData();
    wait_us(2);
    sr_exp_data.bit.HUB_RESET_N = 1;
    SR_EXP_WriteData();

    DBGC(DC_USB_RESET_COMPLETE);
}
