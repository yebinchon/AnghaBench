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
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static text *
FUNC7(text *expr, Oid relid, const char *relname, int prettyFlags)
{
	Node	   *node;
	List	   *context;
	char	   *exprstr;
	char	   *str;

	/* Convert input TEXT object to C string */
	exprstr = FUNC6(expr);

	/* Convert expression to node tree */
	node = (Node *) FUNC4(exprstr);

	FUNC3(exprstr);

	/* Prepare deparse context if needed */
	if (FUNC0(relid))
		context = FUNC1(relname, relid);
	else
		context = NIL;

	/* Deparse */
	str = FUNC2(node, context, false, false,
									prettyFlags, 0);

	return FUNC5(str);
}