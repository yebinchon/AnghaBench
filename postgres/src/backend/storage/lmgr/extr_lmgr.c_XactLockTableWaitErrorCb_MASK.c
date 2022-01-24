#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int oper; int /*<<< orphan*/  rel; int /*<<< orphan*/  ctid; } ;
typedef  TYPE_1__ XactLockTableWaitInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
#define  XLTW_Delete 135 
#define  XLTW_FetchUpdated 134 
#define  XLTW_InsertIndex 133 
#define  XLTW_InsertIndexUnique 132 
#define  XLTW_Lock 131 
#define  XLTW_LockUpdated 130 
 int XLTW_None ; 
#define  XLTW_RecheckExclusionConstr 129 
#define  XLTW_Update 128 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	XactLockTableWaitInfo *info = (XactLockTableWaitInfo *) arg;

	/*
	 * We would like to print schema name too, but that would require a
	 * syscache lookup.
	 */
	if (info->oper != XLTW_None &&
		FUNC2(info->ctid) && FUNC4(info->rel))
	{
		const char *cxt;

		switch (info->oper)
		{
			case XLTW_Update:
				cxt = FUNC6("while updating tuple (%u,%u) in relation \"%s\"");
				break;
			case XLTW_Delete:
				cxt = FUNC6("while deleting tuple (%u,%u) in relation \"%s\"");
				break;
			case XLTW_Lock:
				cxt = FUNC6("while locking tuple (%u,%u) in relation \"%s\"");
				break;
			case XLTW_LockUpdated:
				cxt = FUNC6("while locking updated version (%u,%u) of tuple in relation \"%s\"");
				break;
			case XLTW_InsertIndex:
				cxt = FUNC6("while inserting index tuple (%u,%u) in relation \"%s\"");
				break;
			case XLTW_InsertIndexUnique:
				cxt = FUNC6("while checking uniqueness of tuple (%u,%u) in relation \"%s\"");
				break;
			case XLTW_FetchUpdated:
				cxt = FUNC6("while rechecking updated tuple (%u,%u) in relation \"%s\"");
				break;
			case XLTW_RecheckExclusionConstr:
				cxt = FUNC6("while checking exclusion constraint on tuple (%u,%u) in relation \"%s\"");
				break;

			default:
				return;
		}

		FUNC5(cxt,
				   FUNC0(info->ctid),
				   FUNC1(info->ctid),
				   FUNC3(info->rel));
	}
}