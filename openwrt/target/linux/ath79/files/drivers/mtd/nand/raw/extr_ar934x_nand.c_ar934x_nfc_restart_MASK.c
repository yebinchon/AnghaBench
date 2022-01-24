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
typedef  int /*<<< orphan*/  u32 ;
struct ar934x_nfc {int /*<<< orphan*/  ctrl_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAND_CMD_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct ar934x_nfc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ar934x_nfc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ar934x_nfc *nfc)
{
	u32 ctrl_reg;

	ctrl_reg = nfc->ctrl_reg;
	FUNC0(nfc);
	nfc->ctrl_reg = ctrl_reg;

	FUNC1(nfc, NAND_CMD_RESET);
}