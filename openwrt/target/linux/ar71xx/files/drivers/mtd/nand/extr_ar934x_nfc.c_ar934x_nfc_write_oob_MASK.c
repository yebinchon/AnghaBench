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
struct nand_chip {int /*<<< orphan*/  oob_poi; } ;
struct mtd_info {int /*<<< orphan*/  oobsize; int /*<<< orphan*/  writesize; } ;
struct ar934x_nfc {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAND_CMD_PAGEPROG ; 
 int FUNC0 (struct ar934x_nfc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ar934x_nfc* FUNC2 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ar934x_nfc*,char*,int) ; 

__attribute__((used)) static int
FUNC4(struct mtd_info *mtd, struct nand_chip *chip,
		     int page)
{
	struct ar934x_nfc *nfc = FUNC2(mtd);

	FUNC3(nfc, "write_oob: page:%d\n", page);

	FUNC1(nfc->buf, chip->oob_poi, mtd->oobsize);

	return FUNC0(nfc, NAND_CMD_PAGEPROG, mtd->writesize,
				     page, mtd->oobsize);
}