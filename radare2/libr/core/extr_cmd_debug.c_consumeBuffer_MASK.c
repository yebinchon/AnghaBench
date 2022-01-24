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
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  R_BUF_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void FUNC4(RBuffer *buf, const char *cmd, const char *errmsg) {
	if (!buf) {
		if (errmsg) {
			FUNC3 ("%s\n", errmsg);
		}
		return;
	}
	if (cmd) {
		FUNC3 ("%s", cmd);
	}
	int i;
	FUNC1 (buf, 0, R_BUF_SET);
	for (i = 0; i < FUNC2 (buf); i++) {
		FUNC3 ("%02x", FUNC0 (buf));
	}
	FUNC3 ("\n");
}