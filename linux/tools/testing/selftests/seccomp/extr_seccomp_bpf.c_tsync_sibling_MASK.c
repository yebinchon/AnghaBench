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
struct tsync_sibling {int /*<<< orphan*/  mutex; scalar_t__ num_waits; int /*<<< orphan*/  cond; int /*<<< orphan*/  started; int /*<<< orphan*/  prog; scalar_t__ diverge; int /*<<< orphan*/  system_tid; } ;

/* Variables and functions */
 int /*<<< orphan*/  PR_GET_NO_NEW_PRIVS ; 
 int /*<<< orphan*/  PR_SET_SECCOMP ; 
 int /*<<< orphan*/  SECCOMP_MODE_FILTER ; 
 scalar_t__ SIBLING_EXIT_FAILURE ; 
 scalar_t__ SIBLING_EXIT_NEWPRIVS ; 
 scalar_t__ SIBLING_EXIT_UNKILLED ; 
 int /*<<< orphan*/  __NR_gettid ; 
 long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void *FUNC7(void *data)
{
	long ret = 0;
	struct tsync_sibling *me = data;

	me->system_tid = FUNC6(__NR_gettid);

	FUNC2(me->mutex);
	if (me->diverge) {
		/* Just re-apply the root prog to fork the tree */
		ret = FUNC0(PR_SET_SECCOMP, SECCOMP_MODE_FILTER,
				me->prog, 0, 0);
	}
	FUNC5(me->started);
	/* Return outside of started so parent notices failures. */
	if (ret) {
		FUNC3(me->mutex);
		return (void *)SIBLING_EXIT_FAILURE;
	}
	do {
		FUNC1(me->cond, me->mutex);
		me->num_waits = me->num_waits - 1;
	} while (me->num_waits);
	FUNC3(me->mutex);

	ret = FUNC0(PR_GET_NO_NEW_PRIVS, 0, 0, 0, 0);
	if (!ret)
		return (void *)SIBLING_EXIT_NEWPRIVS;
	FUNC4(0, NULL, 0);
	return (void *)SIBLING_EXIT_UNKILLED;
}