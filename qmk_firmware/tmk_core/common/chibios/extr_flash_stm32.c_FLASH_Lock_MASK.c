#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  CR; } ;

/* Variables and functions */
 TYPE_1__* FLASH ; 
 int /*<<< orphan*/  FLASH_CR_LOCK ; 

void FUNC0(void) {
    /* Set the Lock Bit to lock the FPEC and the FCR */
    FLASH->CR |= FLASH_CR_LOCK;
}