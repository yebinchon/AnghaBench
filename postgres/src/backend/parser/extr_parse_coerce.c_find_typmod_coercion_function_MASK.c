#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Type ;
struct TYPE_4__ {scalar_t__ castfunc; } ;
struct TYPE_3__ {scalar_t__ typelem; int typlen; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_type ;
typedef  TYPE_2__* Form_pg_cast ;
typedef  int /*<<< orphan*/  CoercionPathType ;

/* Variables and functions */
 int /*<<< orphan*/  CASTSOURCETARGET ; 
 int /*<<< orphan*/  COERCION_PATH_ARRAYCOERCE ; 
 int /*<<< orphan*/  COERCION_PATH_FUNC ; 
 int /*<<< orphan*/  COERCION_PATH_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

CoercionPathType
FUNC7(Oid typeId,
							  Oid *funcid)
{
	CoercionPathType result;
	Type		targetType;
	Form_pg_type typeForm;
	HeapTuple	tuple;

	*funcid = InvalidOid;
	result = COERCION_PATH_FUNC;

	targetType = FUNC6(typeId);
	typeForm = (Form_pg_type) FUNC0(targetType);

	/* Check for a varlena array type */
	if (typeForm->typelem != InvalidOid && typeForm->typlen == -1)
	{
		/* Yes, switch our attention to the element type */
		typeId = typeForm->typelem;
		result = COERCION_PATH_ARRAYCOERCE;
	}
	FUNC4(targetType);

	/* Look in pg_cast */
	tuple = FUNC5(CASTSOURCETARGET,
							FUNC2(typeId),
							FUNC2(typeId));

	if (FUNC1(tuple))
	{
		Form_pg_cast castForm = (Form_pg_cast) FUNC0(tuple);

		*funcid = castForm->castfunc;
		FUNC4(tuple);
	}

	if (!FUNC3(*funcid))
		result = COERCION_PATH_NONE;

	return result;
}