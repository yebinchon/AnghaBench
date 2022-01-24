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
typedef  int /*<<< orphan*/  u32 ;
struct ar934x_nfc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR934X_NFC_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct ar934x_nfc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar934x_nfc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline void FUNC3(struct ar934x_nfc *nfc, u32 cmd_reg)
{
	FUNC2();

	FUNC1(nfc, AR934X_NFC_REG_CMD, cmd_reg);
	/* flush write */
	FUNC0(nfc, AR934X_NFC_REG_CMD);
}