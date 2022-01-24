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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_3__ {int strength; int steps; int /*<<< orphan*/  total; } ;
struct nand_chip {TYPE_1__ ecc; int /*<<< orphan*/ * oob_poi; } ;
struct TYPE_4__ {int corrected; int /*<<< orphan*/  failed; } ;
struct mtd_info {TYPE_2__ ecc_stats; int /*<<< orphan*/  writesize; int /*<<< orphan*/  oobsize; } ;
struct ar934x_nfc {size_t ecc_oob_pos; int ecc_thres; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int AR934X_NFC_ECC_CTRL_ERR_CORRECT ; 
 int AR934X_NFC_ECC_CTRL_ERR_OVER ; 
 int AR934X_NFC_ECC_CTRL_ERR_UNCORRECT ; 
 int /*<<< orphan*/  AR934X_NFC_REG_ECC_CTRL ; 
 int /*<<< orphan*/  NAND_CMD_READ0 ; 
 int /*<<< orphan*/  FUNC0 (struct ar934x_nfc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ar934x_nfc*) ; 
 int FUNC2 (struct ar934x_nfc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ar934x_nfc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ar934x_nfc* FUNC6 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct ar934x_nfc*,char*,int,int) ; 

__attribute__((used)) static int
FUNC8(struct mtd_info *mtd, struct nand_chip *chip,
		     u8 *buf, int oob_required, int page)
{
	struct ar934x_nfc *nfc = FUNC6(mtd);
	u32 ecc_ctrl;
	int max_bitflips = 0;
	bool ecc_failed;
	bool ecc_corrected;
	int err;

	FUNC7(nfc, "read_page: page:%d oob:%d\n", page, oob_required);

	FUNC1(nfc);
	err = FUNC3(nfc, NAND_CMD_READ0, 0, page,
				   mtd->writesize);
	FUNC0(nfc);

	if (err)
		return err;

	/* TODO: optimize to avoid memcpy */
	FUNC5(buf, nfc->buf, mtd->writesize);

	/* read the ECC status */
	ecc_ctrl = FUNC2(nfc, AR934X_NFC_REG_ECC_CTRL);
	ecc_failed = ecc_ctrl & AR934X_NFC_ECC_CTRL_ERR_UNCORRECT;
	ecc_corrected = ecc_ctrl & AR934X_NFC_ECC_CTRL_ERR_CORRECT;

	if (oob_required || ecc_failed) {
		err = FUNC3(nfc, NAND_CMD_READ0, mtd->writesize,
					   page, mtd->oobsize);
		if (err)
			return err;

		if (oob_required)
			FUNC5(chip->oob_poi, nfc->buf, mtd->oobsize);
	}

	if (ecc_failed) {
		/*
		 * The hardware ECC engine reports uncorrectable errors
		 * on empty pages. Check the ECC bytes and the data. If
		 * both contains 0xff bytes only, dont report a failure.
		 *
		 * TODO: prebuild a buffer with 0xff bytes and use memcmp
		 * for better performance?
		 */
		if (!FUNC4(&nfc->buf[nfc->ecc_oob_pos], chip->ecc.total) ||
		    !FUNC4(buf, mtd->writesize))
				mtd->ecc_stats.failed++;
	} else if (ecc_corrected) {
		/*
		 * The hardware does not report the exact count of the
		 * corrected bitflips, use assumptions based on the
		 * threshold.
		 */
		if (ecc_ctrl & AR934X_NFC_ECC_CTRL_ERR_OVER) {
			/*
			 * The number of corrected bitflips exceeds the
			 * threshold. Assume the maximum.
			 */
			max_bitflips = chip->ecc.strength * chip->ecc.steps;
		} else {
			max_bitflips = nfc->ecc_thres * chip->ecc.steps;
		}

		mtd->ecc_stats.corrected += max_bitflips;
	}

	return max_bitflips;
}