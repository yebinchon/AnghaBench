
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
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_16__ {scalar_t__ ENABLE; scalar_t__ COUNT; } ;
struct TYPE_17__ {TYPE_10__ bit; } ;
struct TYPE_27__ {int ENABLE; } ;
struct TYPE_28__ {TYPE_8__ bit; } ;
struct TYPE_20__ {scalar_t__ reg; } ;
struct TYPE_18__ {TYPE_11__ SYNCBUSY; TYPE_9__ CTRLA; TYPE_1__ COUNT; } ;
struct TYPE_24__ {scalar_t__ ENABLE; scalar_t__ COUNT; } ;
struct TYPE_25__ {TYPE_5__ bit; } ;
struct TYPE_22__ {int ENABLE; } ;
struct TYPE_23__ {TYPE_3__ bit; } ;
struct TYPE_21__ {scalar_t__ reg; } ;
struct TYPE_26__ {TYPE_6__ SYNCBUSY; TYPE_4__ CTRLA; TYPE_2__ COUNT; } ;
struct TYPE_19__ {TYPE_12__ COUNT16; TYPE_7__ COUNT32; } ;
typedef TYPE_13__ Tc ;


 int DBGC (int ) ;
 int DC_CLK_RESET_TIME_BEGIN ;
 int DC_CLK_RESET_TIME_COMPLETE ;
 TYPE_13__* TC0 ;
 TYPE_13__* TC4 ;
 scalar_t__ ms_clk ;

void CLK_reset_time(void) {
    Tc *ptc4 = TC4;
    Tc *ptc0 = TC0;

    ms_clk = 0;

    DBGC(DC_CLK_RESET_TIME_BEGIN);


    ptc4->COUNT16.CTRLA.bit.ENABLE = 0;
    while (ptc4->COUNT16.SYNCBUSY.bit.ENABLE) {
    }
    ptc0->COUNT32.CTRLA.bit.ENABLE = 0;
    while (ptc0->COUNT32.SYNCBUSY.bit.ENABLE) {
    }

    ptc4->COUNT16.COUNT.reg = 0;
    while (ptc4->COUNT16.SYNCBUSY.bit.COUNT) {
    }
    ptc0->COUNT32.COUNT.reg = 0;
    while (ptc0->COUNT32.SYNCBUSY.bit.COUNT) {
    }

    ptc0->COUNT32.CTRLA.bit.ENABLE = 1;
    while (ptc0->COUNT32.SYNCBUSY.bit.ENABLE) {
    }
    ptc4->COUNT16.CTRLA.bit.ENABLE = 1;
    while (ptc4->COUNT16.SYNCBUSY.bit.ENABLE) {
    }

    DBGC(DC_CLK_RESET_TIME_COMPLETE);
}
