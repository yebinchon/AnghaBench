#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * (* extract_nodes ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* add_path_item ) (int /*<<< orphan*/ *,TYPE_1__*) ;} ;
struct TYPE_13__ {int type; } ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  JsonbValue ;
typedef  TYPE_1__ JsonPathItem ;
typedef  int /*<<< orphan*/  JsonPathGinPath ;
typedef  int /*<<< orphan*/  JsonPathGinNode ;
typedef  TYPE_2__ JsonPathGinContext ;

/* Variables and functions */
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
#define  jpiCurrent 129 
#define  jpiFilter 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static List *
FUNC6(JsonPathGinContext *cxt, JsonPathGinPath path,
							JsonPathItem *jsp, JsonbValue *scalar)
{
	JsonPathItem next;
	List	   *nodes = NIL;

	for (;;)
	{
		switch (jsp->type)
		{
			case jpiCurrent:
				break;

			case jpiFilter:
				{
					JsonPathItem arg;
					JsonPathGinNode *filter;

					FUNC1(jsp, &arg);

					filter = FUNC0(cxt, path, &arg, false);

					if (filter)
						nodes = FUNC3(nodes, filter);

					break;
				}

			default:
				if (!cxt->add_path_item(&path, jsp))

					/*
					 * Path is not supported by the index opclass, return only
					 * the extracted filter nodes.
					 */
					return nodes;
				break;
		}

		if (!FUNC2(jsp, &next))
			break;

		jsp = &next;
	}

	/*
	 * Append nodes from the path expression itself to the already extracted
	 * list of filter nodes.
	 */
	return cxt->extract_nodes(cxt, path, scalar, nodes);
}