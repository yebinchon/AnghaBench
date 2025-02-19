
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct TYPE_23__ {size_t BAUD; } ;
struct TYPE_24__ {TYPE_7__ bit; } ;
struct TYPE_21__ {int SWRST; } ;
struct TYPE_22__ {TYPE_5__ bit; } ;
struct TYPE_19__ {scalar_t__ SWRST; } ;
struct TYPE_20__ {TYPE_3__ bit; } ;
struct TYPE_25__ {TYPE_8__ BAUD; TYPE_6__ CTRLA; TYPE_4__ SYNCBUSY; } ;
struct TYPE_17__ {int CHEN; scalar_t__ GEN; } ;
struct TYPE_18__ {TYPE_1__ bit; } ;
struct TYPE_16__ {int* freq_gclk; int freq_i2c0; int* freq_sercom; } ;
struct TYPE_15__ {TYPE_2__* PCHCTRL; } ;
struct TYPE_14__ {TYPE_9__ I2CM; } ;
typedef TYPE_10__ Sercom ;
typedef TYPE_11__ Gclk ;


 int DBGC (int ) ;
 int DC_CLK_SET_I2C0_FREQ_BEGIN ;
 int DC_CLK_SET_I2C0_FREQ_COMPLETE ;
 TYPE_11__* GCLK ;
 int clk_enable_sercom_apbmask (size_t) ;
 scalar_t__* sercom_apbbase ;
 size_t* sercom_pchan ;
 TYPE_12__ system_clks ;

uint32_t CLK_set_i2c0_freq(uint8_t sercomn, uint32_t freq) {
    DBGC(DC_CLK_SET_I2C0_FREQ_BEGIN);

    Gclk * pgclk = GCLK;
    Sercom *psercom = (Sercom *)sercom_apbbase[sercomn];
    clk_enable_sercom_apbmask(sercomn);


    pgclk->PCHCTRL[sercom_pchan[sercomn]].bit.GEN = 0;
    pgclk->PCHCTRL[sercom_pchan[sercomn]].bit.CHEN = 1;

    psercom->I2CM.CTRLA.bit.SWRST = 1;
    while (psercom->I2CM.SYNCBUSY.bit.SWRST) {
    }
    while (psercom->I2CM.CTRLA.bit.SWRST) {
    }

    psercom->I2CM.BAUD.bit.BAUD = (uint8_t)(system_clks.freq_gclk[0] / 2 / freq - 1);
    system_clks.freq_i2c0 = system_clks.freq_gclk[0] / 2 / (psercom->I2CM.BAUD.bit.BAUD + 1);
    system_clks.freq_sercom[sercomn] = system_clks.freq_i2c0;

    DBGC(DC_CLK_SET_I2C0_FREQ_COMPLETE);

    return system_clks.freq_i2c0;
}
