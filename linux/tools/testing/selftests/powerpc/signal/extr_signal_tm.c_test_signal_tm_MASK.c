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
struct sigaction {int /*<<< orphan*/  sa_mask; scalar_t__ sa_flags; int /*<<< orphan*/  sa_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_ATTEMPT ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int fail ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int,long,long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  signal_handler ; 
 scalar_t__ signaled ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC13 () ; 
 long FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long*) ; 

__attribute__((used)) static int FUNC15()
{
	int i;
	struct sigaction act;

	act.sa_handler = signal_handler;
	act.sa_flags = 0;
	FUNC12(&act.sa_mask);
	if (FUNC11(SIGUSR1, &act, NULL) < 0) {
		FUNC9("sigaction SIGUSR1");
		FUNC5(1);
	}
	if (FUNC11(SIGALRM, &act, NULL) < 0) {
		FUNC9("sigaction SIGALRM");
		FUNC5(1);
	}

	FUNC1(!FUNC8());

	for (i = 0; i < MAX_ATTEMPT; i++) {
		/*
		 * If anything bad happens in ASM and we fail to set ret
		 * because *handwave* TM this will cause failure
		 */
		long ret = 0xdead;
		long rc = 0xbeef;

		FUNC4(0); /* Disable any pending */
		signaled = 0;
		FUNC4(TIMEOUT);
		FUNC0(FUNC13());
		rc = FUNC14(FUNC7(), SIGUSR1, &ret);
		if (ret == 0xdead)
			/*
			 * This basically means the transaction aborted before we
			 * even got to the suspend... this is crazy but it
			 * happens.
			 * Yes this also means we might never make forward
			 * progress... the alarm() will trip eventually...
			 */
			continue;

		if (rc || ret) {
			/* Ret is actually an errno */
			FUNC10("TEXASR 0x%016lx, TFIAR 0x%016lx\n",
					FUNC2(), FUNC3());
			FUNC6(stderr, "(%d) Fail reason: %d rc=0x%lx ret=0x%lx\n",
					i, fail, rc, ret);
			FUNC0(ret);
		}
		while(!signaled && !fail)
			asm volatile("": : :"memory");
		if (!signaled) {
			FUNC6(stderr, "(%d) Fail reason: %d rc=0x%lx ret=0x%lx\n",
					i, fail, rc, ret);
			FUNC0(fail); /* For the line number */
		}
	}

	return 0;
}