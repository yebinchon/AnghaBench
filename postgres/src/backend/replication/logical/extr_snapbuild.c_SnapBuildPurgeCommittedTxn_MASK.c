#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_4__ {int xcnt; int /*<<< orphan*/ * xip; } ;
struct TYPE_5__ {TYPE_1__ committed; int /*<<< orphan*/  xmax; int /*<<< orphan*/  xmin; int /*<<< orphan*/  context; } ;
typedef  TYPE_2__ SnapBuild ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG3 ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(SnapBuild *builder)
{
	int			off;
	TransactionId *workspace;
	int			surviving_xids = 0;

	/* not ready yet */
	if (!FUNC2(builder->xmin))
		return;

	/* TODO: Neater algorithm than just copying and iterating? */
	workspace =
		FUNC0(builder->context,
						   builder->committed.xcnt * sizeof(TransactionId));

	/* copy xids that still are interesting to workspace */
	for (off = 0; off < builder->committed.xcnt; off++)
	{
		if (FUNC1(builder->committed.xip[off],
										builder->xmin))
			;					/* remove */
		else
			workspace[surviving_xids++] = builder->committed.xip[off];
	}

	/* copy workspace back to persistent state */
	FUNC4(builder->committed.xip, workspace,
		   surviving_xids * sizeof(TransactionId));

	FUNC3(DEBUG3, "purged committed transactions from %u to %u, xmin: %u, xmax: %u",
		 (uint32) builder->committed.xcnt, (uint32) surviving_xids,
		 builder->xmin, builder->xmax);
	builder->committed.xcnt = surviving_xids;

	FUNC5(workspace);
}