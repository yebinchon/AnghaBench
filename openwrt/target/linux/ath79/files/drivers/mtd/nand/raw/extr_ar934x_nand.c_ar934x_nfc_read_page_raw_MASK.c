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
struct nand_chip {int /*<<< orphan*/ * oob_poi; } ;
struct mtd_info {int writesize; int oobsize; } ;
struct ar934x_nfc {int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAND_CMD_READ0 ; 
 int FUNC0 (struct ar934x_nfc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct ar934x_nfc* FUNC2 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ar934x_nfc*,char*,int,int) ; 

__attribute__((used)) static int FUNC4(struct mtd_info *mtd,
				    struct nand_chip *chip, u8 *buf,
				    int oob_required, int page)
{
	struct ar934x_nfc *nfc = FUNC2(mtd);
	int len;
	int err;

	FUNC3(nfc, "read_page_raw: page:%d oob:%d\n", page, oob_required);

	len = mtd->writesize;
	if (oob_required)
		len += mtd->oobsize;

	err = FUNC0(nfc, NAND_CMD_READ0, 0, page, len);
	if (err)
		return err;

	FUNC1(buf, nfc->buf, mtd->writesize);

	if (oob_required)
		FUNC1(chip->oob_poi, &nfc->buf[mtd->writesize], mtd->oobsize);

	return 0;
}