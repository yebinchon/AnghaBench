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
struct rseq {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_3__ {int /*<<< orphan*/  cpu_id; } ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 int /*<<< orphan*/  RSEQ_CPU_ID_REGISTRATION_FAILED ; 
 int /*<<< orphan*/  RSEQ_SIG ; 
 scalar_t__ UINT_MAX ; 
 TYPE_1__ __rseq_abi ; 
 scalar_t__ __rseq_refcount ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  rseq_ownership ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(void)
{
	int rc, ret = 0;
	sigset_t oldset;

	if (!rseq_ownership)
		return 0;
	FUNC2(&oldset);
	if (__rseq_refcount == UINT_MAX) {
		ret = -1;
		goto end;
	}
	if (__rseq_refcount++)
		goto end;
	rc = FUNC4(&__rseq_abi, sizeof(struct rseq), 0, RSEQ_SIG);
	if (!rc) {
		FUNC0(FUNC1() >= 0);
		goto end;
	}
	if (errno != EBUSY)
		__rseq_abi.cpu_id = RSEQ_CPU_ID_REGISTRATION_FAILED;
	ret = -1;
	__rseq_refcount--;
end:
	FUNC3(oldset);
	return ret;
}