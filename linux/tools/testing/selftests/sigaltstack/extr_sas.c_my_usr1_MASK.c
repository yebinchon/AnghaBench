#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stk_data {int flag; int /*<<< orphan*/  msg; } ;
struct TYPE_3__ {scalar_t__ ss_flags; } ;
typedef  TYPE_1__ stack_t ;
typedef  int /*<<< orphan*/  siginfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 unsigned long SIGSTKSZ ; 
 scalar_t__ SS_DISABLE ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  msg ; 
 int /*<<< orphan*/  sc ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ sstack ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uc ; 

void FUNC12(int sig, siginfo_t *si, void *u)
{
	char *aa;
	int err;
	stack_t stk;
	struct stk_data *p;

#if __s390x__
	register unsigned long sp asm("%15");
#else
	register unsigned long sp asm("sp");
#endif

	if (sp < (unsigned long)sstack ||
			sp >= (unsigned long)sstack + SIGSTKSZ) {
		FUNC3("SP is not on sigaltstack\n");
	}
	/* put some data on stack. other sighandler will try to overwrite it */
	aa = FUNC0(1024);
	FUNC1(aa);
	p = (struct stk_data *)(aa + 512);
	FUNC9(p->msg, msg);
	p->flag = 1;
	FUNC5("[RUN]\tsignal USR1\n");
	err = FUNC8(NULL, &stk);
	if (err) {
		FUNC3("sigaltstack() - %s\n", FUNC10(errno));
		FUNC2(EXIT_FAILURE);
	}
	if (stk.ss_flags != SS_DISABLE)
		FUNC6("tss_flags=%x, should be SS_DISABLE\n",
				stk.ss_flags);
	else
		FUNC7(
				"sigaltstack is disabled in sighandler\n");
	FUNC11(&sc, &uc);
	FUNC5("%s\n", p->msg);
	if (!p->flag) {
		FUNC4("[RUN]\tAborting\n");
		FUNC2(EXIT_FAILURE);
	}
}