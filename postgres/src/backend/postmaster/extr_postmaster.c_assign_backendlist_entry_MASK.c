#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int dead_end; int bgworker_notify; int /*<<< orphan*/  child_slot; int /*<<< orphan*/  bkend_type; int /*<<< orphan*/  cancel_key; } ;
struct TYPE_5__ {int /*<<< orphan*/  rw_child_slot; TYPE_2__* rw_backend; } ;
typedef  TYPE_1__ RegisteredBgWorker ;
typedef  TYPE_2__ Backend ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  BACKEND_TYPE_BGWORKER ; 
 scalar_t__ CAC_OK ; 
 int /*<<< orphan*/  ERRCODE_CONFIGURATION_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  MyCancelKey ; 
 int /*<<< orphan*/  MyPMChildSlot ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_2__* FUNC6 (int) ; 

__attribute__((used)) static bool
FUNC7(RegisteredBgWorker *rw)
{
	Backend    *bn;

	/*
	 * Check that database state allows another connection.  Currently the
	 * only possible failure is CAC_TOOMANY, so we just log an error message
	 * based on that rather than checking the error code precisely.
	 */
	if (FUNC2(BACKEND_TYPE_BGWORKER) != CAC_OK)
	{
		FUNC3(LOG,
				(FUNC4(ERRCODE_CONFIGURATION_LIMIT_EXCEEDED),
				 FUNC5("no slot available for new worker process")));
		return false;
	}

	/*
	 * Compute the cancel key that will be assigned to this session. We
	 * probably don't need cancel keys for background workers, but we'd better
	 * have something random in the field to prevent unfriendly people from
	 * sending cancels to them.
	 */
	if (!FUNC1(&MyCancelKey))
	{
		FUNC3(LOG,
				(FUNC4(ERRCODE_INTERNAL_ERROR),
				 FUNC5("could not generate random cancel key")));
		return false;
	}

	bn = FUNC6(sizeof(Backend));
	if (bn == NULL)
	{
		FUNC3(LOG,
				(FUNC4(ERRCODE_OUT_OF_MEMORY),
				 FUNC5("out of memory")));
		return false;
	}

	bn->cancel_key = MyCancelKey;
	bn->child_slot = MyPMChildSlot = FUNC0();
	bn->bkend_type = BACKEND_TYPE_BGWORKER;
	bn->dead_end = false;
	bn->bgworker_notify = false;

	rw->rw_backend = bn;
	rw->rw_child_slot = bn->child_slot;

	return true;
}