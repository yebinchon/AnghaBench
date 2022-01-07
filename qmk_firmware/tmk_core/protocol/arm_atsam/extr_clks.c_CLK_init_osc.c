
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_13__ {int freq_xosc0; int * freq_gclk; } ;
struct TYPE_10__ {scalar_t__ GENCTRL; } ;
struct TYPE_11__ {TYPE_3__ vec; } ;
struct TYPE_12__ {TYPE_4__ SYNCBUSY; TYPE_2__* GENCTRL; } ;
struct TYPE_8__ {int DIV; int GENEN; scalar_t__ DIVSEL; int SRC; } ;
struct TYPE_9__ {TYPE_1__ bit; } ;
typedef TYPE_5__ Gclk ;


 int DBGC (int ) ;
 int DC_CLK_INIT_OSC_BEGIN ;
 int DC_CLK_INIT_OSC_COMPLETE ;
 int DC_CLK_INIT_OSC_SYNC_1 ;
 int DC_CLK_INIT_OSC_SYNC_2 ;
 int DC_CLK_INIT_OSC_SYNC_3 ;
 int DC_CLK_INIT_OSC_SYNC_4 ;
 int DC_CLK_INIT_OSC_SYNC_5 ;
 TYPE_5__* GCLK ;
 int GCLK_SOURCE_XOSC0 ;
 size_t GEN_OSC0 ;
 TYPE_6__ system_clks ;

void CLK_init_osc(void) {
    uint8_t gclkn = GEN_OSC0;
    Gclk * pgclk = GCLK;

    DBGC(DC_CLK_INIT_OSC_BEGIN);

    while (pgclk->SYNCBUSY.vec.GENCTRL) {
        DBGC(DC_CLK_INIT_OSC_SYNC_1);
    }
    pgclk->GENCTRL[gclkn].bit.SRC = GCLK_SOURCE_XOSC0;
    while (pgclk->SYNCBUSY.vec.GENCTRL) {
        DBGC(DC_CLK_INIT_OSC_SYNC_2);
    }
    pgclk->GENCTRL[gclkn].bit.DIV = 1;
    while (pgclk->SYNCBUSY.vec.GENCTRL) {
        DBGC(DC_CLK_INIT_OSC_SYNC_3);
    }
    pgclk->GENCTRL[gclkn].bit.DIVSEL = 0;
    while (pgclk->SYNCBUSY.vec.GENCTRL) {
        DBGC(DC_CLK_INIT_OSC_SYNC_4);
    }
    pgclk->GENCTRL[gclkn].bit.GENEN = 1;
    while (pgclk->SYNCBUSY.vec.GENCTRL) {
        DBGC(DC_CLK_INIT_OSC_SYNC_5);
    }
    system_clks.freq_gclk[gclkn] = system_clks.freq_xosc0;

    DBGC(DC_CLK_INIT_OSC_COMPLETE);
}
