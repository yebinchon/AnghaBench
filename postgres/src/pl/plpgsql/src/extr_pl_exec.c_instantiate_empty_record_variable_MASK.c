#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  datum_context; } ;
struct TYPE_6__ {scalar_t__ rectypeid; int /*<<< orphan*/ * erh; int /*<<< orphan*/  refname; } ;
typedef  TYPE_1__ PLpgSQL_rec ;
typedef  TYPE_2__ PLpgSQL_execstate ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ RECORDOID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC7(PLpgSQL_execstate *estate, PLpgSQL_rec *rec)
{
	FUNC0(rec->erh == NULL);	/* else caller error */

	/* If declared type is RECORD, we can't instantiate */
	if (rec->rectypeid == RECORDOID)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC4("record \"%s\" is not assigned yet", rec->refname),
				 FUNC3("The tuple structure of a not-yet-assigned record is indeterminate.")));

	/* Make sure rec->rectypeid is up-to-date before using it */
	FUNC6(rec);

	/* OK, do it */
	rec->erh = FUNC5(rec->rectypeid, -1,
												estate->datum_context);
}