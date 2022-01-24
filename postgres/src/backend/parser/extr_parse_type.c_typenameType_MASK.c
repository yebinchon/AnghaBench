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
struct TYPE_7__ {int /*<<< orphan*/  typisdefined; } ;
typedef  int /*<<< orphan*/  ParseState ;
typedef  TYPE_2__* Form_pg_type ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

Type
FUNC7(ParseState *pstate, const TypeName *typeName, int32 *typmod_p)
{
	Type		tup;

	tup = FUNC1(pstate, typeName, typmod_p, false);
	if (tup == NULL)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_UNDEFINED_OBJECT),
				 FUNC5("type \"%s\" does not exist",
						FUNC2(typeName)),
				 FUNC6(pstate, typeName->location)));
	if (!((Form_pg_type) FUNC0(tup))->typisdefined)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_UNDEFINED_OBJECT),
				 FUNC5("type \"%s\" is only a shell",
						FUNC2(typeName)),
				 FUNC6(pstate, typeName->location)));
	return tup;
}