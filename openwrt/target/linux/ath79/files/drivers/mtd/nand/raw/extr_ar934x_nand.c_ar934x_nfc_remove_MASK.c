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
struct platform_device {int dummy; } ;
struct mtd_info {int dummy; } ;
struct ar934x_nfc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ar934x_nfc*) ; 
 struct mtd_info* FUNC1 (struct ar934x_nfc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtd_info*) ; 
 struct ar934x_nfc* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct ar934x_nfc *nfc;
	struct mtd_info *mtd;

	nfc = FUNC3(pdev);
	if (nfc) {
		mtd = FUNC1(nfc);
		FUNC2(mtd);
		FUNC0(nfc);
	}

	return 0;
}