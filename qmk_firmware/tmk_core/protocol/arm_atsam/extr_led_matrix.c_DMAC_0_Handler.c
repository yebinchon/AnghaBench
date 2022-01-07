
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* Channel; } ;
struct TYPE_5__ {scalar_t__ TERR; scalar_t__ TCMPL; } ;
struct TYPE_6__ {int reg; TYPE_1__ bit; } ;
struct TYPE_7__ {TYPE_2__ CHINTFLAG; } ;


 TYPE_4__* DMAC ;
 int DMAC_CHINTENCLR_TCMPL ;
 int DMAC_CHINTENCLR_TERR ;
 int i2c1_stop () ;
 int i2c_led_q_run () ;
 scalar_t__ i2c_led_q_running ;

void DMAC_0_Handler(void) {
    if (DMAC->Channel[0].CHINTFLAG.bit.TCMPL) {
        DMAC->Channel[0].CHINTFLAG.reg = DMAC_CHINTENCLR_TCMPL;

        i2c1_stop();

        i2c_led_q_running = 0;

        i2c_led_q_run();

        return;
    }

    if (DMAC->Channel[0].CHINTFLAG.bit.TERR) {
        DMAC->Channel[0].CHINTFLAG.reg = DMAC_CHINTENCLR_TERR;
    }
}
