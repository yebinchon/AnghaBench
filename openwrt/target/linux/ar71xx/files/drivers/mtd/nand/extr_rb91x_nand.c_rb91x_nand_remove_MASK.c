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
struct rb91x_nand_info {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct rb91x_nand_info* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct rb91x_nand_info*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct rb91x_nand_info *info = FUNC1(pdev);

	FUNC0(FUNC2(info));

	return 0;
}