
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
typedef int uint32_t ;
struct TYPE_13__ {int* freq_dpll; int* freq_gclk; } ;
struct TYPE_8__ {scalar_t__ GENCTRL; } ;
struct TYPE_9__ {TYPE_1__ vec; } ;
struct TYPE_12__ {TYPE_4__* GENCTRL; TYPE_2__ SYNCBUSY; } ;
struct TYPE_10__ {size_t DIV; int GENEN; scalar_t__ DIVSEL; int SRC; } ;
struct TYPE_11__ {TYPE_3__ bit; } ;
typedef TYPE_5__ Gclk ;


 int DBGC (int ) ;
 int DC_CLK_SET_GCLK_FREQ_BEGIN ;
 int DC_CLK_SET_GCLK_FREQ_COMPLETE ;
 int DC_CLK_SET_GCLK_FREQ_SYNC_1 ;
 int DC_CLK_SET_GCLK_FREQ_SYNC_2 ;
 int DC_CLK_SET_GCLK_FREQ_SYNC_3 ;
 int DC_CLK_SET_GCLK_FREQ_SYNC_4 ;
 int DC_CLK_SET_GCLK_FREQ_SYNC_5 ;
 TYPE_5__* GCLK ;
 int USE_DPLL_DEF ;
 TYPE_6__ system_clks ;

uint32_t CLK_set_gclk_freq(uint8_t gclkn, uint32_t freq) {
    Gclk *pgclk = GCLK;

    DBGC(DC_CLK_SET_GCLK_FREQ_BEGIN);

    while (pgclk->SYNCBUSY.vec.GENCTRL) {
        DBGC(DC_CLK_SET_GCLK_FREQ_SYNC_1);
    }
    pgclk->GENCTRL[gclkn].bit.SRC = USE_DPLL_DEF;
    while (pgclk->SYNCBUSY.vec.GENCTRL) {
        DBGC(DC_CLK_SET_GCLK_FREQ_SYNC_2);
    }
    pgclk->GENCTRL[gclkn].bit.DIV = (uint8_t)(system_clks.freq_dpll[0] / freq);
    while (pgclk->SYNCBUSY.vec.GENCTRL) {
        DBGC(DC_CLK_SET_GCLK_FREQ_SYNC_3);
    }
    pgclk->GENCTRL[gclkn].bit.DIVSEL = 0;
    while (pgclk->SYNCBUSY.vec.GENCTRL) {
        DBGC(DC_CLK_SET_GCLK_FREQ_SYNC_4);
    }
    pgclk->GENCTRL[gclkn].bit.GENEN = 1;
    while (pgclk->SYNCBUSY.vec.GENCTRL) {
        DBGC(DC_CLK_SET_GCLK_FREQ_SYNC_5);
    }
    system_clks.freq_gclk[gclkn] = system_clks.freq_dpll[0] / pgclk->GENCTRL[gclkn].bit.DIV;

    DBGC(DC_CLK_SET_GCLK_FREQ_COMPLETE);

    return system_clks.freq_gclk[gclkn];
}
