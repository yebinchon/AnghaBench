
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_18__ {int BUSSTATE; scalar_t__ CLKHOLD; } ;
struct TYPE_20__ {TYPE_7__ bit; } ;
struct TYPE_16__ {int MB; } ;
struct TYPE_17__ {TYPE_5__ bit; } ;
struct TYPE_14__ {scalar_t__ SYSOP; } ;
struct TYPE_15__ {TYPE_3__ bit; } ;
struct TYPE_12__ {int CMD; } ;
struct TYPE_13__ {TYPE_1__ bit; } ;
struct TYPE_19__ {TYPE_9__ STATUS; TYPE_6__ INTFLAG; TYPE_4__ SYNCBUSY; TYPE_2__ CTRLB; } ;
struct TYPE_11__ {TYPE_8__ I2CM; } ;


 TYPE_10__* SERCOM0 ;

void i2c0_stop(void) {
    if (SERCOM0->I2CM.STATUS.bit.CLKHOLD || SERCOM0->I2CM.INTFLAG.bit.MB == 1 || SERCOM0->I2CM.STATUS.bit.BUSSTATE != 1) {
        SERCOM0->I2CM.CTRLB.bit.CMD = 3;
        while (SERCOM0->I2CM.SYNCBUSY.bit.SYSOP)
            ;
        while (SERCOM0->I2CM.STATUS.bit.CLKHOLD)
            ;
        while (SERCOM0->I2CM.INTFLAG.bit.MB)
            ;
        while (SERCOM0->I2CM.STATUS.bit.BUSSTATE != 1)
            ;
    }
}
