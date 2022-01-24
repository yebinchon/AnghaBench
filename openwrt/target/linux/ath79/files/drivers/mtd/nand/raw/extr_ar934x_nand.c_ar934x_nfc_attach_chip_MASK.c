#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  algo; int /*<<< orphan*/  mode; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct TYPE_4__ {struct device* parent; } ;
struct mtd_info {TYPE_2__ dev; } ;
struct device {int dummy; } ;
struct ar934x_nfc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NAND_ECC_BCH ; 
 int /*<<< orphan*/  NAND_ECC_HAMMING ; 
 int /*<<< orphan*/  NAND_ECC_HW ; 
 int /*<<< orphan*/  NAND_ECC_SOFT ; 
 int FUNC0 (struct mtd_info*) ; 
 int FUNC1 (struct ar934x_nfc*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct ar934x_nfc* FUNC3 (struct nand_chip*) ; 
 struct mtd_info* FUNC4 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC5(struct nand_chip *nand)
{
	struct mtd_info *mtd = FUNC4(nand);
	struct ar934x_nfc *nfc = FUNC3(nand);
	struct device *dev = mtd->dev.parent;
	int ret;

	ret = FUNC0(mtd);
	if (ret)
		return ret;

	if (nand->ecc.mode == NAND_ECC_HW) {
		ret = FUNC1(nfc);
		if (ret)
			return ret;
	} else if (nand->ecc.mode != NAND_ECC_SOFT) {
		FUNC2(dev, "unknown ECC mode %d\n", nand->ecc.mode);
		return -EINVAL;
	} else if ((nand->ecc.algo != NAND_ECC_BCH) &&
		   (nand->ecc.algo != NAND_ECC_HAMMING)) {
		FUNC2(dev, "unknown software ECC algo %d\n", nand->ecc.algo);
		return -EINVAL;
	}

	return 0;
}