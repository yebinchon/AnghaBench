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

/* Variables and functions */
 int /*<<< orphan*/ * cctx ; 
 int /*<<< orphan*/ * gctx ; 
 int /*<<< orphan*/ * jit_stack ; 
 int /*<<< orphan*/ * mctx ; 
 int /*<<< orphan*/ * mdata ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ pcre2_init_ok ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void)
{/*{{{*/
	if (gctx) {
		FUNC1(gctx);
		gctx = NULL;
	}

	if (cctx) {
		FUNC0(cctx);
		cctx = NULL;
	}

	if (mctx) {
		FUNC3(mctx);
		mctx = NULL;
	}

#ifdef HAVE_PCRE_JIT_SUPPORT
	/* Stack may only be destroyed when no cached patterns
	 	possibly associated with it do exist. */
	if (jit_stack) {
		pcre2_jit_stack_free(jit_stack);
		jit_stack = NULL;
	}
#endif

	if (mdata) {
		FUNC4(mdata);
		mdata = NULL;
	}

	pcre2_init_ok = 0;
}