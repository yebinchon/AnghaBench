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
struct TYPE_2__ {int /*<<< orphan*/  typinput; int /*<<< orphan*/  typisdefined; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_type ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPEOID ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void
FUNC12(Oid type, Oid *typInput, Oid *typIOParam)
{
	HeapTuple	typeTuple;
	Form_pg_type pt;

	typeTuple = FUNC5(TYPEOID, FUNC2(type));
	if (!FUNC1(typeTuple))
		FUNC6(ERROR, "cache lookup failed for type %u", type);
	pt = (Form_pg_type) FUNC0(typeTuple);

	if (!pt->typisdefined)
		FUNC7(ERROR,
				(FUNC8(ERRCODE_UNDEFINED_OBJECT),
				 FUNC9("type %s is only a shell",
						FUNC10(type))));
	if (!FUNC3(pt->typinput))
		FUNC7(ERROR,
				(FUNC8(ERRCODE_UNDEFINED_FUNCTION),
				 FUNC9("no input function available for type %s",
						FUNC10(type))));

	*typInput = pt->typinput;
	*typIOParam = FUNC11(typeTuple);

	FUNC4(typeTuple);
}