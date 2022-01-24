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
struct stk_data {scalar_t__ flag; int /*<<< orphan*/  msg; } ;
typedef  int /*<<< orphan*/  siginfo_t ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct stk_data* FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msg ; 
 int /*<<< orphan*/  msg2 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(int sig, siginfo_t *si, void *u)
{
	char *aa;
	struct stk_data *p;

	FUNC1("[RUN]\tsignal USR2\n");
	aa = FUNC0(1024);
	/* dont run valgrind on this */
	/* try to find the data stored by previous sighandler */
	p = FUNC3(aa, 1024, msg, FUNC5(msg));
	if (p) {
		FUNC2("sigaltstack re-used\n");
		/* corrupt the data */
		FUNC4(p->msg, msg2);
		/* tell other sighandler that his data is corrupted */
		p->flag = 0;
	}
}