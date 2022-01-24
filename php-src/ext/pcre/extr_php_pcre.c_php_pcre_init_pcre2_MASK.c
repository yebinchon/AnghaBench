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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCRE_JIT_STACK_MAX_SIZE ; 
 int /*<<< orphan*/  PCRE_JIT_STACK_MIN_SIZE ; 
 int /*<<< orphan*/  PHP_PCRE_PREALLOC_MDATA_SIZE ; 
 scalar_t__ cctx ; 
 scalar_t__ gctx ; 
 scalar_t__ jit_stack ; 
 scalar_t__ mctx ; 
 scalar_t__ mdata ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int pcre2_init_ok ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  php_pcre_free ; 
 int /*<<< orphan*/  php_pcre_malloc ; 

__attribute__((used)) static void FUNC5(uint8_t jit)
{/*{{{*/
	if (!gctx) {
		gctx = FUNC1(php_pcre_malloc, php_pcre_free, NULL);
		if (!gctx) {
			pcre2_init_ok = 0;
			return;
		}
	}

	if (!cctx) {
		cctx = FUNC0(gctx);
		if (!cctx) {
			pcre2_init_ok = 0;
			return;
		}
	}

	if (!mctx) {
		mctx = FUNC3(gctx);
		if (!mctx) {
			pcre2_init_ok = 0;
			return;
		}
	}

#ifdef HAVE_PCRE_JIT_SUPPORT
	if (jit && !jit_stack) {
		jit_stack = pcre2_jit_stack_create(PCRE_JIT_STACK_MIN_SIZE, PCRE_JIT_STACK_MAX_SIZE, gctx);
		if (!jit_stack) {
			pcre2_init_ok = 0;
			return;
		}
	}
#endif

	if (!mdata) {
		mdata = FUNC4(PHP_PCRE_PREALLOC_MDATA_SIZE, gctx);
		if (!mdata) {
			pcre2_init_ok = 0;
			return;
		}
	}

	pcre2_init_ok = 1;
}