#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int objtype; } ;
typedef  TYPE_1__ InternalGrant ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
#define  OBJECT_DATABASE 141 
#define  OBJECT_DOMAIN 140 
#define  OBJECT_FDW 139 
#define  OBJECT_FOREIGN_SERVER 138 
#define  OBJECT_FUNCTION 137 
#define  OBJECT_LANGUAGE 136 
#define  OBJECT_LARGEOBJECT 135 
#define  OBJECT_PROCEDURE 134 
#define  OBJECT_ROUTINE 133 
#define  OBJECT_SCHEMA 132 
#define  OBJECT_SEQUENCE 131 
#define  OBJECT_TABLE 130 
#define  OBJECT_TABLESPACE 129 
#define  OBJECT_TYPE 128 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC13(InternalGrant *istmt)
{
	switch (istmt->objtype)
	{
		case OBJECT_TABLE:
		case OBJECT_SEQUENCE:
			FUNC9(istmt);
			break;
		case OBJECT_DATABASE:
			FUNC2(istmt);
			break;
		case OBJECT_DOMAIN:
		case OBJECT_TYPE:
			FUNC11(istmt);
			break;
		case OBJECT_FDW:
			FUNC3(istmt);
			break;
		case OBJECT_FOREIGN_SERVER:
			FUNC4(istmt);
			break;
		case OBJECT_FUNCTION:
		case OBJECT_PROCEDURE:
		case OBJECT_ROUTINE:
			FUNC5(istmt);
			break;
		case OBJECT_LANGUAGE:
			FUNC6(istmt);
			break;
		case OBJECT_LARGEOBJECT:
			FUNC7(istmt);
			break;
		case OBJECT_SCHEMA:
			FUNC8(istmt);
			break;
		case OBJECT_TABLESPACE:
			FUNC10(istmt);
			break;
		default:
			FUNC12(ERROR, "unrecognized GrantStmt.objtype: %d",
				 (int) istmt->objtype);
	}

	/*
	 * Pass the info to event triggers about the just-executed GRANT.  Note
	 * that we prefer to do it after actually executing it, because that gives
	 * the functions a chance to adjust the istmt with privileges actually
	 * granted.
	 */
	if (FUNC1(istmt->objtype))
		FUNC0(istmt);
}