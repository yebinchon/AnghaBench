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
typedef  int /*<<< orphan*/  RStrBuf ;
typedef  int /*<<< orphan*/  RParse ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static void FUNC7(RParse *p, RStrBuf *s) {
	char *op_buf_asm = FUNC3 (s);
	size_t len = FUNC4 (s);
	char *out = FUNC1 (64 + (len * 2));
	if (out) {
		*out = 0;
		FUNC6 (out , op_buf_asm);
	// XXX we shouldn't pad here because we have t orefactor the RParse API to handle boundaries and chunks properly
		FUNC2 (p, op_buf_asm, out);
		FUNC5 (s, out);
		FUNC0 (out);
	}
}