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
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_3__ {int /*<<< orphan*/  hash; } ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  JsonbValue ;
typedef  TYPE_1__ JsonPathGinPath ;
typedef  int /*<<< orphan*/  JsonPathGinContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static List *
FUNC4(JsonPathGinContext *cxt, JsonPathGinPath path,
							  JsonbValue *scalar, List *nodes)
{
	if (scalar)
	{
		/* append path hash node for equality queries */
		uint32		hash = path.hash;

		FUNC0(scalar, &hash);

		return FUNC2(nodes,
					   FUNC3(FUNC1(hash)));
	}
	else
	{
		/* jsonb_path_ops doesn't support EXISTS queries => nothing to append */
		return nodes;
	}
}