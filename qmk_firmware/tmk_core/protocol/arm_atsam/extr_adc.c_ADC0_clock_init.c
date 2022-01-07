
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {TYPE_4__* PCHCTRL; } ;
struct TYPE_7__ {int ADC0_; } ;
struct TYPE_8__ {TYPE_1__ bit; } ;
struct TYPE_11__ {TYPE_2__ APBDMASK; } ;
struct TYPE_9__ {int CHEN; int GEN; } ;
struct TYPE_10__ {TYPE_3__ bit; } ;


 size_t ADC0_GCLK_ID ;
 int DBGC (int ) ;
 int DC_ADC0_CLOCK_INIT_BEGIN ;
 int DC_ADC0_CLOCK_INIT_COMPLETE ;
 TYPE_6__* GCLK ;
 int GEN_OSC0 ;
 TYPE_5__* MCLK ;

void ADC0_clock_init(void) {
    DBGC(DC_ADC0_CLOCK_INIT_BEGIN);

    MCLK->APBDMASK.bit.ADC0_ = 1;

    GCLK->PCHCTRL[ADC0_GCLK_ID].bit.GEN = GEN_OSC0;
    GCLK->PCHCTRL[ADC0_GCLK_ID].bit.CHEN = 1;

    DBGC(DC_ADC0_CLOCK_INIT_COMPLETE);
}
