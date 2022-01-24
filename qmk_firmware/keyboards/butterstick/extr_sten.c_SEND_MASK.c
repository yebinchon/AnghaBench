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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/ * CMDBUF ; 
 size_t CMDLEN ; 
 scalar_t__ COMMAND ; 
 size_t MAX_CMD_BUF ; 
 scalar_t__ cMode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,size_t) ; 

void FUNC2(uint8_t kc) {
	// Send Keycode, Does not work for Quantum Codes
	if (cMode == COMMAND && CMDLEN < MAX_CMD_BUF) {
#ifndef NO_DEBUG
		FUNC1("CMD LEN: %d BUF: %d\n", CMDLEN, MAX_CMD_BUF);
#endif
		CMDBUF[CMDLEN] = kc;
		CMDLEN++;
	} 

	if (cMode != COMMAND) FUNC0(kc);
	return;
}