#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int nowait; int /*<<< orphan*/  ancestor_views; int /*<<< orphan*/  viewoid; int /*<<< orphan*/  viewowner; int /*<<< orphan*/  lockmode; } ;
struct TYPE_9__ {TYPE_1__* rd_rel; } ;
struct TYPE_8__ {int /*<<< orphan*/  relowner; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  Query ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_3__ LockViewRecurse_context ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  LOCKMODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(Oid reloid, LOCKMODE lockmode, bool nowait, List *ancestor_views)
{
	LockViewRecurse_context context;

	Relation	view;
	Query	   *viewquery;

	view = FUNC5(reloid, NoLock);
	viewquery = FUNC1(view);

	context.lockmode = lockmode;
	context.nowait = nowait;
	context.viewowner = view->rd_rel->relowner;
	context.viewoid = reloid;
	context.ancestor_views = FUNC2(ancestor_views, reloid);

	FUNC0((Node *) viewquery, &context);

	(void) FUNC3(context.ancestor_views);

	FUNC4(view, NoLock);
}