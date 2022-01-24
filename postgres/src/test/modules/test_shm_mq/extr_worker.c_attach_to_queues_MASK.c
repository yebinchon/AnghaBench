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
typedef  int /*<<< orphan*/  shm_toc ;
typedef  int /*<<< orphan*/  shm_mq_handle ;
typedef  int /*<<< orphan*/  shm_mq ;
typedef  int /*<<< orphan*/  dsm_segment ;

/* Variables and functions */
 int /*<<< orphan*/  MyProc ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void
FUNC4(dsm_segment *seg, shm_toc *toc, int myworkernumber,
				 shm_mq_handle **inqhp, shm_mq_handle **outqhp)
{
	shm_mq	   *inq;
	shm_mq	   *outq;

	inq = FUNC3(toc, myworkernumber, false);
	FUNC1(inq, MyProc);
	*inqhp = FUNC0(inq, seg, NULL);
	outq = FUNC3(toc, myworkernumber + 1, false);
	FUNC2(outq, MyProc);
	*outqhp = FUNC0(outq, seg, NULL);
}