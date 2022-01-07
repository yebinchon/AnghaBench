
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_16__ {int ENABLE; } ;
struct TYPE_17__ {TYPE_7__ bit; } ;
struct TYPE_14__ {scalar_t__ ENABLE; } ;
struct TYPE_15__ {TYPE_5__ bit; } ;
struct TYPE_12__ {scalar_t__ EWOFFSET; } ;
struct TYPE_13__ {TYPE_3__ bit; } ;
struct TYPE_10__ {scalar_t__ PER; scalar_t__ WINDOW; } ;
struct TYPE_11__ {TYPE_1__ bit; } ;
struct TYPE_18__ {TYPE_8__ CTRLA; TYPE_6__ SYNCBUSY; TYPE_4__ EWCTRL; TYPE_2__ CONFIG; } ;


 int BOOTLOADER_MAGIC ;
 int * MAGIC_ADDR ;
 int NVIC_SystemReset () ;
 TYPE_9__* WDT ;

void bootloader_jump(void) {
    WDT->CTRLA.bit.ENABLE = 0;
    while (WDT->SYNCBUSY.bit.ENABLE) {
    }
    while (WDT->CTRLA.bit.ENABLE) {
    }
    WDT->CONFIG.bit.WINDOW = 0;
    WDT->CONFIG.bit.PER = 0;
    WDT->EWCTRL.bit.EWOFFSET = 0;
    WDT->CTRLA.bit.ENABLE = 1;
    while (WDT->SYNCBUSY.bit.ENABLE) {
    }
    while (!WDT->CTRLA.bit.ENABLE) {
    }
    while (1) {
    }
}
