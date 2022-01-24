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
typedef  unsigned int u32 ;
struct ar934x_nfc {int /*<<< orphan*/  buf; int /*<<< orphan*/  ctrl_reg; } ;

/* Variables and functions */
 unsigned int AR934X_NFC_CMD_CMD0_M ; 
 unsigned int AR934X_NFC_CMD_CMD0_S ; 
 unsigned int AR934X_NFC_CMD_SEQ_1C1AXR ; 
 int /*<<< orphan*/  AR934X_NFC_ID_BUF_SIZE ; 
 int FUNC0 (struct ar934x_nfc*,int,int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ar934x_nfc*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ar934x_nfc *nfc, unsigned command)
{
	u32 cmd_reg;
	int err;

	FUNC1(nfc, "readid, cmd:%02x\n", command);

	cmd_reg = AR934X_NFC_CMD_SEQ_1C1AXR;
	cmd_reg |= (command & AR934X_NFC_CMD_CMD0_M) << AR934X_NFC_CMD_CMD0_S;

	err = FUNC0(nfc, -1, -1, AR934X_NFC_ID_BUF_SIZE,
				       cmd_reg, nfc->ctrl_reg, false);

	FUNC2("[id] ", nfc->buf, AR934X_NFC_ID_BUF_SIZE);

	return err;
}