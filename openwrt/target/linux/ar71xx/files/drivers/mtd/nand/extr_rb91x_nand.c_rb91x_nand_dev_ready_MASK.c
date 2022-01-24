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
struct rb91x_nand_info {int /*<<< orphan*/  gpio_rdy; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct rb91x_nand_info* FUNC1 (struct mtd_info*) ; 

__attribute__((used)) static int FUNC2(struct mtd_info *mtd)
{
	struct rb91x_nand_info *rbni = FUNC1(mtd);

	return FUNC0(rbni->gpio_rdy);
}