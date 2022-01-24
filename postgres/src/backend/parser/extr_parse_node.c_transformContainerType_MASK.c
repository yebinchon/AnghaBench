#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_2__ {scalar_t__ typelem; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_type ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ INT2ARRAYOID ; 
 scalar_t__ INT2VECTOROID ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ OIDARRAYOID ; 
 scalar_t__ OIDVECTOROID ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPEOID ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ *) ; 

Oid
FUNC11(Oid *containerType, int32 *containerTypmod)
{
	Oid			origContainerType = *containerType;
	Oid			elementType;
	HeapTuple	type_tuple_container;
	Form_pg_type type_struct_container;

	/*
	 * If the input is a domain, smash to base type, and extract the actual
	 * typmod to be applied to the base type. Subscripting a domain is an
	 * operation that necessarily works on the base container type, not the
	 * domain itself. (Note that we provide no method whereby the creator of a
	 * domain over a container type could hide its ability to be subscripted.)
	 */
	*containerType = FUNC10(*containerType, containerTypmod);

	/*
	 * Here is an array specific code. We treat int2vector and oidvector as
	 * though they were domains over int2[] and oid[].  This is needed because
	 * array slicing could create an array that doesn't satisfy the
	 * dimensionality constraints of the xxxvector type; so we want the result
	 * of a slice operation to be considered to be of the more general type.
	 */
	if (*containerType == INT2VECTOROID)
		*containerType = INT2ARRAYOID;
	else if (*containerType == OIDVECTOROID)
		*containerType = OIDARRAYOID;

	/* Get the type tuple for the container */
	type_tuple_container = FUNC4(TYPEOID, FUNC2(*containerType));
	if (!FUNC1(type_tuple_container))
		FUNC5(ERROR, "cache lookup failed for type %u", *containerType);
	type_struct_container = (Form_pg_type) FUNC0(type_tuple_container);

	/* needn't check typisdefined since this will fail anyway */

	elementType = type_struct_container->typelem;
	if (elementType == InvalidOid)
		FUNC6(ERROR,
				(FUNC7(ERRCODE_DATATYPE_MISMATCH),
				 FUNC8("cannot subscript type %s because it is not an array",
						FUNC9(origContainerType))));

	FUNC3(type_tuple_container);

	return elementType;
}