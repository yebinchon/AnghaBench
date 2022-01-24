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
 int /*<<< orphan*/  DRV_GO ; 
 int /*<<< orphan*/  DRV_MODE ; 
 int /*<<< orphan*/  DRV_RTP_INPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

void FUNC1(void) {
    FUNC0(DRV_GO, 0x00);
    FUNC0(DRV_RTP_INPUT, 20);  // 20 is the lowest value I've found where haptics can still be felt.
    FUNC0(DRV_MODE, 0x05);
    FUNC0(DRV_GO, 0x01);
}