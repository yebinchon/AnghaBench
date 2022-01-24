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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  scalar_t__ CoercionPathType ;
typedef  int /*<<< orphan*/  CoercionForm ;
typedef  int /*<<< orphan*/  CoercionContext ;

/* Variables and functions */
 scalar_t__ COERCION_PATH_NONE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Node *
FUNC4(Node *node, Oid targetTypeId, int32 targetTypMod,
				   CoercionContext ccontext, CoercionForm cformat,
				   int location,
				   bool hideInputCoercion)
{
	CoercionPathType pathtype;
	Oid			funcId;

	/*
	 * A negative typmod is assumed to mean that no coercion is wanted. Also,
	 * skip coercion if already done.
	 */
	if (targetTypMod < 0 || targetTypMod == FUNC1(node))
		return node;

	pathtype = FUNC2(targetTypeId, &funcId);

	if (pathtype != COERCION_PATH_NONE)
	{
		/* Suppress display of nested coercion steps */
		if (hideInputCoercion)
			FUNC3(node);

		node = FUNC0(node, pathtype, funcId,
										 targetTypeId, targetTypMod,
										 ccontext, cformat, location);
	}

	return node;
}