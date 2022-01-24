#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int nargs; int /*<<< orphan*/  entryDatum; int /*<<< orphan*/  entryIndex; } ;
struct TYPE_5__ {int type; struct TYPE_5__** args; TYPE_1__ val; } ;
typedef  TYPE_2__ JsonPathGinNode ;
typedef  int /*<<< orphan*/  GinEntries ;

/* Variables and functions */
#define  JSP_GIN_AND 130 
#define  JSP_GIN_ENTRY 129 
#define  JSP_GIN_OR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void
FUNC2(JsonPathGinNode *node, GinEntries *entries)
{
	FUNC1();

	switch (node->type)
	{
		case JSP_GIN_ENTRY:
			/* replace datum with its index in the array */
			node->val.entryIndex = FUNC0(entries, node->val.entryDatum);
			break;

		case JSP_GIN_OR:
		case JSP_GIN_AND:
			{
				int			i;

				for (i = 0; i < node->val.nargs; i++)
					FUNC2(node->args[i], entries);

				break;
			}
	}
}