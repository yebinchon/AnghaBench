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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRCM_DTHE ; 
 int PRCM_RUN_MODE_CLK ; 
 int PRCM_SLP_MODE_CLK ; 

void FUNC2 (void) {
    // Enable the Data Hashing and Transform Engine
    FUNC0(PRCM_DTHE, PRCM_RUN_MODE_CLK | PRCM_SLP_MODE_CLK);
    FUNC1(PRCM_DTHE);
}