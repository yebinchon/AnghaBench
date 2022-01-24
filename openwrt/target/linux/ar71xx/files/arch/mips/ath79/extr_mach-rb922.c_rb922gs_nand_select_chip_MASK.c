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
 int /*<<< orphan*/  RB922_GPIO_NAND_NCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(int chip_no)
{
	switch (chip_no) {
	case 0:
		FUNC0(RB922_GPIO_NAND_NCE, 0);
		break;
	default:
		FUNC0(RB922_GPIO_NAND_NCE, 1);
		break;
	}
	FUNC1(500);
}