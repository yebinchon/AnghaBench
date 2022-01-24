#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  buf; int /*<<< orphan*/  prettyFlags; } ;
typedef  TYPE_1__ deparse_context ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(Node *node, deparse_context *context,
					bool showimplicit, Node *parentNode)
{
	bool		need_paren;

	need_paren = FUNC0(context) &&
		!FUNC3(node, parentNode, context->prettyFlags);

	if (need_paren)
		FUNC1(context->buf, '(');

	FUNC2(node, context, showimplicit);

	if (need_paren)
		FUNC1(context->buf, ')');
}