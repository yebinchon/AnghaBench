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
struct ar934x_nfc {int irq_status; int /*<<< orphan*/  irq_waitq; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR934X_NFC_DEV_READY_TIMEOUT ; 
 int AR934X_NFC_IRQ_MASK ; 
 int /*<<< orphan*/  AR934X_NFC_REG_INT_MASK ; 
 int /*<<< orphan*/  AR934X_NFC_REG_INT_STATUS ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct ar934x_nfc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar934x_nfc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ar934x_nfc*,char*,int) ; 
 long FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct ar934x_nfc *nfc)
{
	long timeout;
	int ret;

	timeout = FUNC4(nfc->irq_waitq,
				(nfc->irq_status & AR934X_NFC_IRQ_MASK) != 0,
				FUNC2(AR934X_NFC_DEV_READY_TIMEOUT));

	ret = 0;
	if (!timeout) {
		FUNC1(nfc, AR934X_NFC_REG_INT_MASK, 0);
		FUNC1(nfc, AR934X_NFC_REG_INT_STATUS, 0);
		/* flush write */
		FUNC0(nfc, AR934X_NFC_REG_INT_STATUS);

		FUNC3(nfc,
			"timeout waiting for interrupt, status:%08x\n",
			nfc->irq_status);
		ret = -ETIMEDOUT;
	}

	nfc->irq_status = 0;
	return ret;
}