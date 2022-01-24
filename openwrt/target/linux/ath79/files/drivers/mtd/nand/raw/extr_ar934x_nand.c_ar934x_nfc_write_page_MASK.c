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
typedef  int /*<<< orphan*/  u8 ;
struct nand_chip {int /*<<< orphan*/  oob_poi; } ;
struct mtd_info {int /*<<< orphan*/  writesize; int /*<<< orphan*/  oobsize; } ;
struct ar934x_nfc {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAND_CMD_PAGEPROG ; 
 int /*<<< orphan*/  FUNC0 (struct ar934x_nfc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ar934x_nfc*) ; 
 int FUNC2 (struct ar934x_nfc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mtd_info*,struct nand_chip*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct ar934x_nfc* FUNC6 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct ar934x_nfc*,char*,int,int) ; 

__attribute__((used)) static int FUNC8(struct mtd_info *mtd, struct nand_chip *chip,
				 const u8 *buf, int oob_required, int page)
{
	struct ar934x_nfc *nfc = FUNC6(mtd);
	int err;

	FUNC7(nfc, "write_page: page:%d oob:%d\n", page, oob_required);

	/* write OOB first */
	if (oob_required &&
	    !FUNC4(chip->oob_poi, mtd->oobsize)) {
		err = FUNC3(mtd, chip, page);
		if (err)
			return err;
	}

	/* TODO: optimize to avoid memcopy */
	FUNC5(nfc->buf, buf, mtd->writesize);

	FUNC1(nfc);
	err = FUNC2(nfc, NAND_CMD_PAGEPROG, 0, page,
				    mtd->writesize);
	FUNC0(nfc);

	return err;
}