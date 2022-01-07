
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_14__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_27__ {scalar_t__ SYSOP; scalar_t__ ENABLE; } ;
struct TYPE_28__ {TYPE_8__ bit; } ;
struct TYPE_25__ {int MODE; int RUNSTDBY; int ENABLE; scalar_t__ SPEED; } ;
struct TYPE_26__ {TYPE_6__ bit; } ;
struct TYPE_24__ {TYPE_4__* PINCFG; TYPE_2__* PMUX; } ;
struct TYPE_22__ {int PMUXEN; } ;
struct TYPE_23__ {TYPE_3__ bit; } ;
struct TYPE_20__ {int PMUXE; int PMUXO; } ;
struct TYPE_21__ {TYPE_1__ bit; } ;
struct TYPE_19__ {TYPE_5__* Group; } ;
struct TYPE_15__ {int BUSSTATE; } ;
struct TYPE_16__ {TYPE_10__ bit; } ;
struct TYPE_17__ {TYPE_11__ STATUS; TYPE_9__ SYNCBUSY; TYPE_7__ CTRLA; } ;
struct TYPE_18__ {TYPE_12__ I2CM; } ;


 int CHAN_SERCOM_I2C0 ;
 int CLK_set_i2c0_freq (int ,int ) ;
 int DBGC (int ) ;
 int DC_I2C0_INIT_BEGIN ;
 int DC_I2C0_INIT_COMPLETE ;
 int DC_I2C0_INIT_SYNC_ENABLING ;
 int DC_I2C0_INIT_SYNC_SYSOP ;
 int DC_I2C0_INIT_WAIT_IDLE ;
 int FREQ_I2C0_DEFAULT ;
 TYPE_14__* PORT ;
 TYPE_13__* SERCOM0 ;

void i2c0_init(void) {
    DBGC(DC_I2C0_INIT_BEGIN);

    CLK_set_i2c0_freq(CHAN_SERCOM_I2C0, FREQ_I2C0_DEFAULT);


    PORT->Group[0].PMUX[4].bit.PMUXE = 2;
    PORT->Group[0].PMUX[4].bit.PMUXO = 2;
    PORT->Group[0].PINCFG[8].bit.PMUXEN = 1;
    PORT->Group[0].PINCFG[9].bit.PMUXEN = 1;




    SERCOM0->I2CM.CTRLA.bit.MODE = 5;

    SERCOM0->I2CM.CTRLA.bit.SPEED = 0;
    SERCOM0->I2CM.CTRLA.bit.RUNSTDBY = 1;

    SERCOM0->I2CM.CTRLA.bit.ENABLE = 1;
    while (SERCOM0->I2CM.SYNCBUSY.bit.ENABLE) {
        DBGC(DC_I2C0_INIT_SYNC_ENABLING);
    }

    SERCOM0->I2CM.STATUS.bit.BUSSTATE = 1;
    while (SERCOM0->I2CM.SYNCBUSY.bit.SYSOP) {
        DBGC(DC_I2C0_INIT_SYNC_SYSOP);
    }
    while (SERCOM0->I2CM.STATUS.bit.BUSSTATE != 1) {
        DBGC(DC_I2C0_INIT_WAIT_IDLE);
    }

    DBGC(DC_I2C0_INIT_COMPLETE);
}
