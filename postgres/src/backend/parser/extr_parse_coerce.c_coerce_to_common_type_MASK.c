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
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  COERCE_IMPLICIT_CAST ; 
 int /*<<< orphan*/  COERCION_IMPLICIT ; 
 int /*<<< orphan*/  ERRCODE_CANNOT_COERCE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

Node *
FUNC9(ParseState *pstate, Node *node,
					  Oid targetTypeId, const char *context)
{
	Oid			inputTypeId = FUNC6(node);

	if (inputTypeId == targetTypeId)
		return node;			/* no work */
	if (FUNC0(1, &inputTypeId, &targetTypeId, COERCION_IMPLICIT))
		node = FUNC1(pstate, node, inputTypeId, targetTypeId, -1,
						   COERCION_IMPLICIT, COERCE_IMPLICIT_CAST, -1);
	else
		FUNC2(ERROR,
				(FUNC3(ERRCODE_CANNOT_COERCE),
		/* translator: first %s is name of a SQL construct, eg CASE */
				 FUNC4("%s could not convert type %s to %s",
						context,
						FUNC7(inputTypeId),
						FUNC7(targetTypeId)),
				 FUNC8(pstate, FUNC5(node))));
	return node;
}