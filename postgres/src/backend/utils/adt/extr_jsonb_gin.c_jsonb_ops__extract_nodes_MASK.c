#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ lax; } ;
struct TYPE_11__ {TYPE_2__* items; } ;
struct TYPE_10__ {scalar_t__ type; int /*<<< orphan*/  keyName; struct TYPE_10__* parent; } ;
struct TYPE_9__ {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ JsonbValue ;
typedef  TYPE_2__ JsonPathGinPathItem ;
typedef  TYPE_3__ JsonPathGinPath ;
typedef  int /*<<< orphan*/  JsonPathGinNode ;
typedef  TYPE_4__ JsonPathGinContext ;
typedef  scalar_t__ GinTernaryValue ;

/* Variables and functions */
 scalar_t__ GIN_FALSE ; 
 scalar_t__ GIN_MAYBE ; 
 scalar_t__ GIN_TRUE ; 
 int /*<<< orphan*/  JSP_GIN_OR ; 
 scalar_t__ jbvString ; 
 scalar_t__ jpiAny ; 
 scalar_t__ jpiAnyArray ; 
 scalar_t__ jpiIndexArray ; 
 scalar_t__ jpiKey ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static List *
FUNC4(JsonPathGinContext *cxt, JsonPathGinPath path,
						 JsonbValue *scalar, List *nodes)
{
	JsonPathGinPathItem *pentry;

	if (scalar)
	{
		JsonPathGinNode *node;

		/*
		 * Append path entry nodes only if scalar is provided.  See header
		 * comment for details.
		 */
		for (pentry = path.items; pentry; pentry = pentry->parent)
		{
			if (pentry->type == jpiKey) /* only keys are indexed */
				nodes = FUNC0(nodes, FUNC1(pentry->keyName));
		}

		/* Append scalar node for equality queries. */
		if (scalar->type == jbvString)
		{
			JsonPathGinPathItem *last = path.items;
			GinTernaryValue key_entry;

			/*
			 * Assuming that jsonb_ops interprets string array elements as
			 * keys, we may extract key or non-key entry or even both.  In the
			 * latter case we create OR-node.  It is possible in lax mode
			 * where arrays are automatically unwrapped, or in strict mode for
			 * jpiAny items.
			 */

			if (cxt->lax)
				key_entry = GIN_MAYBE;
			else if (!last)		/* root ($) */
				key_entry = GIN_FALSE;
			else if (last->type == jpiAnyArray || last->type == jpiIndexArray)
				key_entry = GIN_TRUE;
			else if (last->type == jpiAny)
				key_entry = GIN_MAYBE;
			else
				key_entry = GIN_FALSE;

			if (key_entry == GIN_MAYBE)
			{
				JsonPathGinNode *n1 = FUNC2(scalar, true);
				JsonPathGinNode *n2 = FUNC2(scalar, false);

				node = FUNC3(JSP_GIN_OR, n1, n2);
			}
			else
			{
				node = FUNC2(scalar,
												  key_entry == GIN_TRUE);
			}
		}
		else
		{
			node = FUNC2(scalar, false);
		}

		nodes = FUNC0(nodes, node);
	}

	return nodes;
}