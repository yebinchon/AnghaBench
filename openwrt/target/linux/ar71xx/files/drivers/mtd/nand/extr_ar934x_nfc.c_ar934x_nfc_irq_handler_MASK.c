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
struct ar934x_nfc {int irq_status; int spurious_irq_expected; int /*<<< orphan*/  parent; int /*<<< orphan*/  irq_waitq; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  AR934X_NFC_REG_INT_MASK ; 
 int /*<<< orphan*/  AR934X_NFC_REG_INT_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (struct ar934x_nfc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar934x_nfc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ar934x_nfc*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t
FUNC5(int irq, void *data)
{
	struct ar934x_nfc *nfc = data;
	u32 status;

	status = FUNC0(nfc, AR934X_NFC_REG_INT_STATUS);

	FUNC1(nfc, AR934X_NFC_REG_INT_STATUS, 0);
	/* flush write */
	FUNC0(nfc, AR934X_NFC_REG_INT_STATUS);

	status &= FUNC0(nfc, AR934X_NFC_REG_INT_MASK);
	if (status) {
		FUNC3(nfc, "got IRQ, status:%08x\n", status);

		nfc->irq_status = status;
		nfc->spurious_irq_expected = true;
		FUNC4(&nfc->irq_waitq);
	} else {
		if (nfc->spurious_irq_expected) {
			nfc->spurious_irq_expected = false;
		} else {
			FUNC2(nfc->parent, "spurious interrupt\n");
		}
	}

	return IRQ_HANDLED;
}