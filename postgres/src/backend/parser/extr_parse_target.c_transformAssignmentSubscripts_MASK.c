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
typedef  int /*<<< orphan*/  ParseState ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  ListCell ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  COERCE_IMPLICIT_CAST ; 
 int /*<<< orphan*/  COERCION_ASSIGNMENT ; 
 int /*<<< orphan*/  ERRCODE_CANNOT_COERCE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static Node *
FUNC12(ParseState *pstate,
							  Node *basenode,
							  const char *targetName,
							  Oid targetTypeId,
							  int32 targetTypMod,
							  Oid targetCollation,
							  List *subscripts,
							  bool isSlice,
							  List *indirection,
							  ListCell *next_indirection,
							  Node *rhs,
							  int location)
{
	Node	   *result;
	Oid			containerType;
	int32		containerTypMod;
	Oid			elementTypeId;
	Oid			typeNeeded;
	Oid			collationNeeded;

	FUNC0(subscripts != NIL);

	/* Identify the actual array type and element type involved */
	containerType = targetTypeId;
	containerTypMod = targetTypMod;
	elementTypeId = FUNC11(&containerType, &containerTypMod);

	/* Identify type that RHS must provide */
	typeNeeded = isSlice ? containerType : elementTypeId;

	/*
	 * container normally has same collation as elements, but there's an
	 * exception: we might be subscripting a domain over a container type. In
	 * that case use collation of the base type.
	 */
	if (containerType == targetTypeId)
		collationNeeded = targetCollation;
	else
		collationNeeded = FUNC7(containerType);

	/* recurse to create appropriate RHS for container assign */
	rhs = FUNC9(pstate,
										 NULL,
										 targetName,
										 true,
										 typeNeeded,
										 containerTypMod,
										 collationNeeded,
										 indirection,
										 next_indirection,
										 rhs,
										 location);

	/* process subscripts */
	result = (Node *) FUNC10(pstate,
												   basenode,
												   containerType,
												   elementTypeId,
												   containerTypMod,
												   subscripts,
												   rhs);

	/* If target was a domain over container, need to coerce up to the domain */
	if (containerType != targetTypeId)
	{
		Oid			resulttype = FUNC5(result);

		result = FUNC1(pstate,
									   result, resulttype,
									   targetTypeId, targetTypMod,
									   COERCION_ASSIGNMENT,
									   COERCE_IMPLICIT_CAST,
									   -1);
		/* can fail if we had int2vector/oidvector, but not for true domains */
		if (result == NULL)
			FUNC2(ERROR,
					(FUNC3(ERRCODE_CANNOT_COERCE),
					 FUNC4("cannot cast type %s to %s",
							FUNC6(resulttype),
							FUNC6(targetTypeId)),
					 FUNC8(pstate, location)));
	}

	return result;
}