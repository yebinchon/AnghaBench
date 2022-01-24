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
typedef  int /*<<< orphan*/  ParseState ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 scalar_t__ BOOLOID ; 
 int /*<<< orphan*/  COERCE_IMPLICIT_CAST ; 
 int /*<<< orphan*/  COERCION_ASSIGNMENT ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

Node *
FUNC9(ParseState *pstate, Node *node,
				  const char *constructName)
{
	Oid			inputTypeId = FUNC5(node);

	if (inputTypeId != BOOLOID)
	{
		Node	   *newnode;

		newnode = FUNC0(pstate, node, inputTypeId,
										BOOLOID, -1,
										COERCION_ASSIGNMENT,
										COERCE_IMPLICIT_CAST,
										-1);
		if (newnode == NULL)
			FUNC1(ERROR,
					(FUNC2(ERRCODE_DATATYPE_MISMATCH),
			/* translator: first %s is name of a SQL construct, eg WHERE */
					 FUNC3("argument of %s must be type %s, not type %s",
							constructName, "boolean",
							FUNC7(inputTypeId)),
					 FUNC8(pstate, FUNC4(node))));
		node = newnode;
	}

	if (FUNC6(node))
		FUNC1(ERROR,
				(FUNC2(ERRCODE_DATATYPE_MISMATCH),
		/* translator: %s is name of a SQL construct, eg WHERE */
				 FUNC3("argument of %s must not return a set",
						constructName),
				 FUNC8(pstate, FUNC4(node))));

	return node;
}