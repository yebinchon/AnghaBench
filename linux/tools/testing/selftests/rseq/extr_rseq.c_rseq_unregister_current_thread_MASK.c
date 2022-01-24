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
struct rseq {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  RSEQ_FLAG_UNREGISTER ; 
 int /*<<< orphan*/  RSEQ_SIG ; 
 int /*<<< orphan*/  __rseq_abi ; 
 int __rseq_refcount ; 
 int /*<<< orphan*/  rseq_ownership ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(void)
{
	int rc, ret = 0;
	sigset_t oldset;

	if (!rseq_ownership)
		return 0;
	FUNC0(&oldset);
	if (!__rseq_refcount) {
		ret = -1;
		goto end;
	}
	if (--__rseq_refcount)
		goto end;
	rc = FUNC2(&__rseq_abi, sizeof(struct rseq),
		      RSEQ_FLAG_UNREGISTER, RSEQ_SIG);
	if (!rc)
		goto end;
	__rseq_refcount = 1;
	ret = -1;
end:
	FUNC1(oldset);
	return ret;
}