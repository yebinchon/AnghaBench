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
struct TYPE_3__ {scalar_t__ distinctClause; scalar_t__ groupClause; scalar_t__ hasTargetSRFs; scalar_t__ hasWindowFuncs; scalar_t__ hasAggs; int /*<<< orphan*/ * havingQual; scalar_t__ setOperations; } ;
typedef  TYPE_1__ Query ;
typedef  scalar_t__ LockClauseStrength ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ LCS_NONE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

void
FUNC5(Query *qry, LockClauseStrength strength)
{
	FUNC0(strength != LCS_NONE);	/* else caller error */

	if (qry->setOperations)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED),
		/*------
		  translator: %s is a SQL row locking clause such as FOR UPDATE */
				 FUNC4("%s is not allowed with UNION/INTERSECT/EXCEPT",
						FUNC1(strength))));
	if (qry->distinctClause != NIL)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED),
		/*------
		  translator: %s is a SQL row locking clause such as FOR UPDATE */
				 FUNC4("%s is not allowed with DISTINCT clause",
						FUNC1(strength))));
	if (qry->groupClause != NIL)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED),
		/*------
		  translator: %s is a SQL row locking clause such as FOR UPDATE */
				 FUNC4("%s is not allowed with GROUP BY clause",
						FUNC1(strength))));
	if (qry->havingQual != NULL)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED),
		/*------
		  translator: %s is a SQL row locking clause such as FOR UPDATE */
				 FUNC4("%s is not allowed with HAVING clause",
						FUNC1(strength))));
	if (qry->hasAggs)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED),
		/*------
		  translator: %s is a SQL row locking clause such as FOR UPDATE */
				 FUNC4("%s is not allowed with aggregate functions",
						FUNC1(strength))));
	if (qry->hasWindowFuncs)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED),
		/*------
		  translator: %s is a SQL row locking clause such as FOR UPDATE */
				 FUNC4("%s is not allowed with window functions",
						FUNC1(strength))));
	if (qry->hasTargetSRFs)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED),
		/*------
		  translator: %s is a SQL row locking clause such as FOR UPDATE */
				 FUNC4("%s is not allowed with set-returning functions in the target list",
						FUNC1(strength))));
}