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
struct sigaction {int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_sigaction; } ;

/* Variables and functions */
 int /*<<< orphan*/  SA_SIGINFO ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 long FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  running ; 
 long FUNC3 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  signal_vmx_sig ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  threads_starting ; 
 int /*<<< orphan*/ ** varray ; 

void *FUNC5(void *p)
{
	int i, j;
	long rc;
	struct sigaction act;
	act.sa_sigaction = signal_vmx_sig;
	act.sa_flags = SA_SIGINFO;
	rc = FUNC3(SIGUSR1, &act, NULL);
	if (rc)
		return p;

	FUNC4(FUNC1());
	for (i = 0; i < 12; i++)
		for (j = 0; j < 4; j++)
			varray[i][j] = FUNC2();

	rc = FUNC0(varray, &threads_starting, &running);

	return (void *) rc;
}