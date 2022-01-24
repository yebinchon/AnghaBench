#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ status; char const* prepStmtName; char const* sourceText; char const* commandTag; int /*<<< orphan*/ * cplan; int /*<<< orphan*/ * stmts; } ;
typedef  TYPE_1__* Portal ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  CachedPlan ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ PORTAL_DEFINED ; 
 scalar_t__ PORTAL_NEW ; 
 int FUNC2 (TYPE_1__*) ; 

void
FUNC3(Portal portal,
				  const char *prepStmtName,
				  const char *sourceText,
				  const char *commandTag,
				  List *stmts,
				  CachedPlan *cplan)
{
	FUNC0(FUNC2(portal));
	FUNC1(portal->status == PORTAL_NEW);

	FUNC0(sourceText != NULL);
	FUNC0(commandTag != NULL || stmts == NIL);

	portal->prepStmtName = prepStmtName;
	portal->sourceText = sourceText;
	portal->commandTag = commandTag;
	portal->stmts = stmts;
	portal->cplan = cplan;
	portal->status = PORTAL_DEFINED;
}