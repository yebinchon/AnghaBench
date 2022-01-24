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
typedef  int u8 ;
struct rb91x_nand_info {int /*<<< orphan*/  gpio_nce; int /*<<< orphan*/  gpio_ale; int /*<<< orphan*/  gpio_cle; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 unsigned int NAND_ALE ; 
 unsigned int NAND_CLE ; 
 int NAND_CMD_NONE ; 
 unsigned int NAND_CTRL_CHANGE ; 
 unsigned int NAND_NCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct rb91x_nand_info* FUNC1 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct rb91x_nand_info*,int*,int) ; 

__attribute__((used)) static void FUNC3(struct mtd_info *mtd, int cmd,
				unsigned int ctrl)
{
	struct rb91x_nand_info *rbni = FUNC1(mtd);

	if (ctrl & NAND_CTRL_CHANGE) {
		FUNC0(rbni->gpio_cle,
					(ctrl & NAND_CLE) ? 1 : 0);
		FUNC0(rbni->gpio_ale,
					(ctrl & NAND_ALE) ? 1 : 0);
		FUNC0(rbni->gpio_nce,
					(ctrl & NAND_NCE) ? 0 : 1);
	}

	if (cmd != NAND_CMD_NONE) {
		u8 t = cmd;

		FUNC2(rbni, &t, 1);
	}
}