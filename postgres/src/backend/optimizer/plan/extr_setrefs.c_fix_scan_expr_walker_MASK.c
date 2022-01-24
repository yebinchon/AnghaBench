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
struct TYPE_4__ {int /*<<< orphan*/  root; } ;
typedef  TYPE_1__ fix_scan_expr_context ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PlaceHolderVar ; 
 int FUNC2 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ *,TYPE_1__*),void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC4(Node *node, fix_scan_expr_context *context)
{
	if (node == NULL)
		return false;
	FUNC0(!FUNC1(node, PlaceHolderVar));
	FUNC3(context->root, node);
	return FUNC2(node, fix_scan_expr_walker,
								  (void *) context);
}