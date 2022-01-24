#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int int32 ;
struct TYPE_15__ {int count; int /*<<< orphan*/ * buf; int /*<<< orphan*/  member_0; } ;
struct TYPE_14__ {int header; } ;
struct TYPE_13__ {int lax; int /*<<< orphan*/  extract_nodes; int /*<<< orphan*/  add_path_item; } ;
struct TYPE_12__ {int /*<<< orphan*/  member_0; } ;
typedef  scalar_t__ StrategyNumber ;
typedef  scalar_t__ Pointer ;
typedef  int /*<<< orphan*/  JsonPathItem ;
typedef  TYPE_1__ JsonPathGinPath ;
typedef  int /*<<< orphan*/  JsonPathGinNode ;
typedef  TYPE_2__ JsonPathGinContext ;
typedef  TYPE_3__ JsonPath ;
typedef  TYPE_4__ GinEntries ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int JSONPATH_LAX ; 
 scalar_t__ JsonbJsonpathExistsStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,TYPE_1__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,TYPE_1__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jsonb_ops__add_path_item ; 
 int /*<<< orphan*/  jsonb_ops__extract_nodes ; 
 int /*<<< orphan*/  jsonb_path_ops__add_path_item ; 
 int /*<<< orphan*/  jsonb_path_ops__extract_nodes ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__* FUNC4 (int) ; 

__attribute__((used)) static Datum *
FUNC5(JsonPath *jp, StrategyNumber strat, bool pathOps,
				  int32 *nentries, Pointer **extra_data)
{
	JsonPathGinContext cxt;
	JsonPathItem root;
	JsonPathGinNode *node;
	JsonPathGinPath path = {0};
	GinEntries	entries = {0};

	cxt.lax = (jp->header & JSONPATH_LAX) != 0;

	if (pathOps)
	{
		cxt.add_path_item = jsonb_path_ops__add_path_item;
		cxt.extract_nodes = jsonb_path_ops__extract_nodes;
	}
	else
	{
		cxt.add_path_item = jsonb_ops__add_path_item;
		cxt.extract_nodes = jsonb_ops__extract_nodes;
	}

	FUNC3(&root, jp);

	node = strat == JsonbJsonpathExistsStrategyNumber
		? FUNC2(&cxt, path, &root, NULL)
		: FUNC1(&cxt, path, &root, false);

	if (!node)
	{
		*nentries = 0;
		return NULL;
	}

	FUNC0(node, &entries);

	*nentries = entries.count;
	if (!*nentries)
		return NULL;

	*extra_data = FUNC4(sizeof(**extra_data) * entries.count);
	**extra_data = (Pointer) node;

	return entries.buf;
}