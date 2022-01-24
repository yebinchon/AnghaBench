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
struct TYPE_2__ {scalar_t__ castmethod; scalar_t__ castcontext; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_cast ;

/* Variables and functions */
 scalar_t__ ANYARRAYOID ; 
 scalar_t__ ANYELEMENTOID ; 
 scalar_t__ ANYENUMOID ; 
 scalar_t__ ANYNONARRAYOID ; 
 scalar_t__ ANYOID ; 
 scalar_t__ ANYRANGEOID ; 
 int /*<<< orphan*/  CASTSOURCETARGET ; 
 scalar_t__ COERCION_CODE_IMPLICIT ; 
 scalar_t__ COERCION_METHOD_BINARY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ RECORDARRAYOID ; 
 scalar_t__ RECORDOID ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 

bool
FUNC12(Oid srctype, Oid targettype)
{
	HeapTuple	tuple;
	Form_pg_cast castForm;
	bool		result;

	/* Fast path if same type */
	if (srctype == targettype)
		return true;

	/* Anything is coercible to ANY or ANYELEMENT */
	if (targettype == ANYOID || targettype == ANYELEMENTOID)
		return true;

	/* If srctype is a domain, reduce to its base type */
	if (FUNC4(srctype))
		srctype = FUNC7(srctype);

	/* Somewhat-fast path for domain -> base type case */
	if (srctype == targettype)
		return true;

	/* Also accept any array type as coercible to ANYARRAY */
	if (targettype == ANYARRAYOID)
		if (FUNC9(srctype))
			return true;

	/* Also accept any non-array type as coercible to ANYNONARRAY */
	if (targettype == ANYNONARRAYOID)
		if (!FUNC9(srctype))
			return true;

	/* Also accept any enum type as coercible to ANYENUM */
	if (targettype == ANYENUMOID)
		if (FUNC10(srctype))
			return true;

	/* Also accept any range type as coercible to ANYRANGE */
	if (targettype == ANYRANGEOID)
		if (FUNC11(srctype))
			return true;

	/* Also accept any composite type as coercible to RECORD */
	if (targettype == RECORDOID)
		if (FUNC2(srctype))
			return true;

	/* Also accept any composite array type as coercible to RECORD[] */
	if (targettype == RECORDARRAYOID)
		if (FUNC8(srctype))
			return true;

	/* Else look in pg_cast */
	tuple = FUNC6(CASTSOURCETARGET,
							FUNC3(srctype),
							FUNC3(targettype));
	if (!FUNC1(tuple))
		return false;			/* no cast */
	castForm = (Form_pg_cast) FUNC0(tuple);

	result = (castForm->castmethod == COERCION_METHOD_BINARY &&
			  castForm->castcontext == COERCION_CODE_IMPLICIT);

	FUNC5(tuple);

	return result;
}