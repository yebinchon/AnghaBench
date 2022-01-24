#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  EXPANDER_REG_GPINTENA ; 
 int /*<<< orphan*/  EXPANDER_REG_GPINTENB ; 
 int /*<<< orphan*/  EXPANDER_REG_GPPUA ; 
 int /*<<< orphan*/  EXPANDER_REG_GPPUB ; 
 int /*<<< orphan*/  EXPANDER_REG_IODIRA ; 
 int /*<<< orphan*/  EXPANDER_REG_IODIRB ; 
 int /*<<< orphan*/  EXPANDER_REG_IPOLA ; 
 int /*<<< orphan*/  EXPANDER_REG_IPOLB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

void FUNC1() {
    // set everything to input
    FUNC0(EXPANDER_REG_IODIRA, 0xff);
    FUNC0(EXPANDER_REG_IODIRB, 0xff);

    // turn on pull-ups
    FUNC0(EXPANDER_REG_GPPUA, 0xff);
    FUNC0(EXPANDER_REG_GPPUB, 0xff);

    // disable interrupts
    FUNC0(EXPANDER_REG_GPINTENA, 0x0);
    FUNC0(EXPANDER_REG_GPINTENB, 0x0);

    // polarity
    FUNC0(EXPANDER_REG_IPOLA, 0x0);
    FUNC0(EXPANDER_REG_IPOLB, 0x0);
}