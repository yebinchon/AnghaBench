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
 int /*<<< orphan*/  REG_SCREEN_CTRL ; 
 int /*<<< orphan*/  REG_SCREEN_DATA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

int FUNC2() {
    /* Use the VGA ports to get the current cursor position
     * 1. Ask for high byte of the cursor offset (data 14)
     * 2. Ask for low byte (data 15)
     */
    FUNC1(REG_SCREEN_CTRL, 14);
    int offset = FUNC0(REG_SCREEN_DATA) << 8; /* High byte: << 8 */
    FUNC1(REG_SCREEN_CTRL, 15);
    offset += FUNC0(REG_SCREEN_DATA);
    return offset * 2; /* Position * size of character cell */
}