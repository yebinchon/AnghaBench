#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sigaction {int sa_flags; int /*<<< orphan*/  sa_sigaction; int /*<<< orphan*/  sa_mask; } ;
struct TYPE_9__ {int ss_flags; void* ss_size; scalar_t__ ss_sp; } ;
typedef  TYPE_2__ stack_t ;
struct TYPE_8__ {void* ss_size; scalar_t__ ss_sp; } ;
struct TYPE_10__ {TYPE_1__ uc_stack; int /*<<< orphan*/ * uc_link; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int EXIT_FAILURE ; 
 int MAP_ANONYMOUS ; 
 scalar_t__ MAP_FAILED ; 
 int MAP_PRIVATE ; 
 int MAP_STACK ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int SA_ONSTACK ; 
 int SA_SIGINFO ; 
 void* SIGSTKSZ ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int SS_AUTODISARM ; 
 int SS_DISABLE ; 
 int SS_ONSTACK ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,void*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  my_usr1 ; 
 int /*<<< orphan*/  my_usr2 ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ sstack ; 
 int FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  switch_fn ; 
 TYPE_3__ uc ; 
 scalar_t__ ustack ; 

int FUNC15(void)
{
	struct sigaction act;
	stack_t stk;
	int err;

	FUNC5();
	FUNC6(3);

	FUNC13(&act.sa_mask);
	act.sa_flags = SA_ONSTACK | SA_SIGINFO;
	act.sa_sigaction = my_usr1;
	FUNC11(SIGUSR1, &act, NULL);
	act.sa_sigaction = my_usr2;
	FUNC11(SIGUSR2, &act, NULL);
	sstack = FUNC9(NULL, SIGSTKSZ, PROT_READ | PROT_WRITE,
		      MAP_PRIVATE | MAP_ANONYMOUS | MAP_STACK, -1, 0);
	if (sstack == MAP_FAILED) {
		FUNC2("mmap() - %s\n", FUNC14(errno));
		return EXIT_FAILURE;
	}

	err = FUNC12(NULL, &stk);
	if (err) {
		FUNC2("sigaltstack() - %s\n", FUNC14(errno));
		FUNC0(EXIT_FAILURE);
	}
	if (stk.ss_flags == SS_DISABLE) {
		FUNC7(
				"Initial sigaltstack state was SS_DISABLE\n");
	} else {
		FUNC2("Initial sigaltstack state was %x; "
		       "should have been SS_DISABLE\n", stk.ss_flags);
		return EXIT_FAILURE;
	}

	stk.ss_sp = sstack;
	stk.ss_size = SIGSTKSZ;
	stk.ss_flags = SS_ONSTACK | SS_AUTODISARM;
	err = FUNC12(&stk, NULL);
	if (err) {
		if (errno == EINVAL) {
			FUNC4(
				"[NOTE]\tThe running kernel doesn't support SS_AUTODISARM\n");
			/*
			 * If test cases for the !SS_AUTODISARM variant were
			 * added, we could still run them.  We don't have any
			 * test cases like that yet, so just exit and report
			 * success.
			 */
			return 0;
		} else {
			FUNC2(
				"sigaltstack(SS_ONSTACK | SS_AUTODISARM)  %s\n",
					FUNC14(errno));
			return EXIT_FAILURE;
		}
	}

	ustack = FUNC9(NULL, SIGSTKSZ, PROT_READ | PROT_WRITE,
		      MAP_PRIVATE | MAP_ANONYMOUS | MAP_STACK, -1, 0);
	if (ustack == MAP_FAILED) {
		FUNC2("mmap() - %s\n", FUNC14(errno));
		return EXIT_FAILURE;
	}
	FUNC1(&uc);
	uc.uc_link = NULL;
	uc.uc_stack.ss_sp = ustack;
	uc.uc_stack.ss_size = SIGSTKSZ;
	FUNC8(&uc, switch_fn, 0);
	FUNC10(SIGUSR1);

	err = FUNC12(NULL, &stk);
	if (err) {
		FUNC2("sigaltstack() - %s\n", FUNC14(errno));
		FUNC0(EXIT_FAILURE);
	}
	if (stk.ss_flags != SS_AUTODISARM) {
		FUNC2("ss_flags=%x, should be SS_AUTODISARM\n",
				stk.ss_flags);
		FUNC0(EXIT_FAILURE);
	}
	FUNC7(
			"sigaltstack is still SS_AUTODISARM after signal\n");

	FUNC3();
	return 0;
}