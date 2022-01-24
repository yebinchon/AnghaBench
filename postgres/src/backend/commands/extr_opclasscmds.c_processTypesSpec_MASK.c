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
typedef  int /*<<< orphan*/  TypeName ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(List *args, Oid *lefttype, Oid *righttype)
{
	TypeName   *typeName;

	FUNC0(args != NIL);

	typeName = (TypeName *) FUNC4(args);
	*lefttype = FUNC7(NULL, typeName);

	if (FUNC5(args) > 1)
	{
		typeName = (TypeName *) FUNC6(args);
		*righttype = FUNC7(NULL, typeName);
	}
	else
		*righttype = *lefttype;

	if (FUNC5(args) > 2)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_SYNTAX_ERROR),
				 FUNC3("one or two argument types must be specified")));
}