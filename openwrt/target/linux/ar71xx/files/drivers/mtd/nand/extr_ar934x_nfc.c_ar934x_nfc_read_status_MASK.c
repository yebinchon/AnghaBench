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
typedef  int u32 ;
struct ar934x_nfc {int* buf; scalar_t__ swap_dma; int /*<<< orphan*/  ctrl_reg; } ;

/* Variables and functions */
 int AR934X_NFC_CMD_CMD0_S ; 
 int AR934X_NFC_CMD_SEQ_S ; 
 int /*<<< orphan*/  AR934X_NFC_REG_CTRL ; 
 int /*<<< orphan*/  AR934X_NFC_REG_INT_STATUS ; 
 int /*<<< orphan*/  AR934X_NFC_REG_READ_STATUS ; 
 int NAND_CMD_STATUS ; 
 int FUNC0 (struct ar934x_nfc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar934x_nfc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ar934x_nfc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ar934x_nfc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ar934x_nfc*,char*,int,int) ; 

__attribute__((used)) static void
FUNC5(struct ar934x_nfc *nfc)
{
	u32 cmd_reg;
	u32 status;

	cmd_reg = NAND_CMD_STATUS << AR934X_NFC_CMD_CMD0_S;
	cmd_reg |= AR934X_NFC_CMD_SEQ_S;

	FUNC2(nfc, AR934X_NFC_REG_INT_STATUS, 0);
	FUNC2(nfc, AR934X_NFC_REG_CTRL, nfc->ctrl_reg);

	FUNC3(nfc, cmd_reg);
	FUNC1(nfc);

	status = FUNC0(nfc, AR934X_NFC_REG_READ_STATUS);

	FUNC4(nfc, "read status, cmd:%08x status:%02x\n",
		cmd_reg, (status & 0xff));

	if (nfc->swap_dma)
		nfc->buf[0 ^ 3] = status;
	else
		nfc->buf[0] = status;
}