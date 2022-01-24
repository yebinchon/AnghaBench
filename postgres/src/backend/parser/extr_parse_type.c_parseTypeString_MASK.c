#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_6__ {int /*<<< orphan*/  location; } ;
typedef  TYPE_1__ TypeName ;
typedef  int /*<<< orphan*/ * Type ;
struct TYPE_7__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  typisdefined; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__* Form_pg_type ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (char const*) ; 

void
FUNC9(const char *str, Oid *typeid_p, int32 *typmod_p, bool missing_ok)
{
	TypeName   *typeName;
	Type		tup;

	typeName = FUNC8(str);

	tup = FUNC1(NULL, typeName, typmod_p, missing_ok);
	if (tup == NULL)
	{
		if (!missing_ok)
			FUNC4(ERROR,
					(FUNC5(ERRCODE_UNDEFINED_OBJECT),
					 FUNC6("type \"%s\" does not exist",
							FUNC3(typeName)),
					 FUNC7(NULL, typeName->location)));
		*typeid_p = InvalidOid;
	}
	else
	{
		Form_pg_type typ = (Form_pg_type) FUNC0(tup);

		if (!typ->typisdefined)
			FUNC4(ERROR,
					(FUNC5(ERRCODE_UNDEFINED_OBJECT),
					 FUNC6("type \"%s\" is only a shell",
							FUNC3(typeName)),
					 FUNC7(NULL, typeName->location)));
		*typeid_p = typ->oid;
		FUNC2(tup);
	}
}