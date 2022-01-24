#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* Channel; } ;
struct TYPE_5__ {scalar_t__ TERR; scalar_t__ TCMPL; } ;
struct TYPE_6__ {int /*<<< orphan*/  reg; TYPE_1__ bit; } ;
struct TYPE_7__ {TYPE_2__ CHINTFLAG; } ;

/* Variables and functions */
 TYPE_4__* DMAC ; 
 int /*<<< orphan*/  DMAC_CHINTENCLR_TCMPL ; 
 int /*<<< orphan*/  DMAC_CHINTENCLR_TERR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ i2c_led_q_running ; 

void FUNC2(void) {
    if (DMAC->Channel[0].CHINTFLAG.bit.TCMPL) {
        DMAC->Channel[0].CHINTFLAG.reg = DMAC_CHINTENCLR_TCMPL;

        FUNC0();

        i2c_led_q_running = 0;

        FUNC1();

        return;
    }

    if (DMAC->Channel[0].CHINTFLAG.bit.TERR) {
        DMAC->Channel[0].CHINTFLAG.reg = DMAC_CHINTENCLR_TERR;
    }
}