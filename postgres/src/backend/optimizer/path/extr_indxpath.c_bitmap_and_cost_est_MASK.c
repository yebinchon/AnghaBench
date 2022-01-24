#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  total_cost; int /*<<< orphan*/  param_info; scalar_t__ parallel_workers; void* pathkeys; int /*<<< orphan*/  pathtarget; TYPE_2__* parent; int /*<<< orphan*/  pathtype; int /*<<< orphan*/  type; } ;
struct TYPE_10__ {void* pathkeys; int /*<<< orphan*/ * param_info; int /*<<< orphan*/  pathtarget; TYPE_2__* parent; int /*<<< orphan*/  pathtype; int /*<<< orphan*/  type; } ;
struct TYPE_13__ {int /*<<< orphan*/ * bitmapquals; TYPE_1__ path; } ;
struct TYPE_12__ {TYPE_6__ path; int /*<<< orphan*/ * bitmapqual; } ;
struct TYPE_11__ {int /*<<< orphan*/  relid; int /*<<< orphan*/  reltarget; } ;
typedef  int /*<<< orphan*/  Relids ;
typedef  TYPE_2__ RelOptInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Path ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Cost ;
typedef  TYPE_3__ BitmapHeapPath ;
typedef  TYPE_4__ BitmapAndPath ;

/* Variables and functions */
 void* NIL ; 
 int /*<<< orphan*/  T_BitmapAnd ; 
 int /*<<< orphan*/  T_BitmapAndPath ; 
 int /*<<< orphan*/  T_BitmapHeapPath ; 
 int /*<<< orphan*/  T_BitmapHeapScan ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Cost
FUNC5(PlannerInfo *root, RelOptInfo *rel, List *paths)
{
	BitmapAndPath apath;
	BitmapHeapPath bpath;
	Relids		required_outer;

	/* Set up a dummy BitmapAndPath */
	apath.path.type = T_BitmapAndPath;
	apath.path.pathtype = T_BitmapAnd;
	apath.path.parent = rel;
	apath.path.pathtarget = rel->reltarget;
	apath.path.param_info = NULL;	/* not used in bitmap trees */
	apath.path.pathkeys = NIL;
	apath.bitmapquals = paths;
	FUNC0(&apath, root);

	/* Identify required outer rels, in case it's a parameterized scan */
	required_outer = FUNC3((Path *) &apath);

	/* Set up a dummy BitmapHeapPath */
	bpath.path.type = T_BitmapHeapPath;
	bpath.path.pathtype = T_BitmapHeapScan;
	bpath.path.parent = rel;
	bpath.path.pathtarget = rel->reltarget;
	bpath.path.param_info = FUNC2(root, rel,
													  required_outer);
	bpath.path.pathkeys = NIL;
	bpath.bitmapqual = (Path *) &apath;

	/*
	 * Check the cost of temporary path without considering parallelism.
	 * Parallel bitmap heap path will be considered at later stage.
	 */
	bpath.path.parallel_workers = 0;

	/* Now we can do cost_bitmap_heap_scan */
	FUNC1(&bpath.path, root, rel,
						  bpath.path.param_info,
						  (Path *) &apath,
						  FUNC4(root, rel->relid, required_outer));

	return bpath.path.total_cost;
}