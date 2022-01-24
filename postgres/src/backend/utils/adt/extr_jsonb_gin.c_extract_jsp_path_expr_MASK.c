#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  JsonbValue ;
typedef  int /*<<< orphan*/  JsonPathItem ;
typedef  int /*<<< orphan*/  JsonPathGinPath ;
typedef  int /*<<< orphan*/  JsonPathGinNode ;
typedef  int /*<<< orphan*/  JsonPathGinContext ;

/* Variables and functions */
 int /*<<< orphan*/  JSP_GIN_AND ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static JsonPathGinNode *
FUNC4(JsonPathGinContext *cxt, JsonPathGinPath path,
					  JsonPathItem *jsp, JsonbValue *scalar)
{
	/* extract a list of nodes to be AND-ed */
	List	   *nodes = FUNC0(cxt, path, jsp, scalar);

	if (FUNC2(nodes) <= 0)
		/* no nodes were extracted => full scan is needed for this path */
		return NULL;

	if (FUNC2(nodes) == 1)
		return FUNC1(nodes); /* avoid extra AND-node */

	/* construct AND-node for path with filters */
	return FUNC3(JSP_GIN_AND, nodes);
}