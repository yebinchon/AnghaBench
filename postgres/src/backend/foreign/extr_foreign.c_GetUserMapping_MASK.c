#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  options; void* serverid; void* userid; int /*<<< orphan*/  umid; } ;
typedef  TYPE_1__ UserMapping ;
struct TYPE_5__ {int /*<<< orphan*/  oid; } ;
typedef  void* Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_user_mapping ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_user_mapping_umoptions ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* InvalidOid ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  USERMAPPINGUSERSERVER ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

UserMapping *
FUNC12(Oid userid, Oid serverid)
{
	Datum		datum;
	HeapTuple	tp;
	bool		isnull;
	UserMapping *um;

	tp = FUNC5(USERMAPPINGUSERSERVER,
						 FUNC3(userid),
						 FUNC3(serverid));

	if (!FUNC1(tp))
	{
		/* Not found for the specific user -- try PUBLIC */
		tp = FUNC5(USERMAPPINGUSERSERVER,
							 FUNC3(InvalidOid),
							 FUNC3(serverid));
	}

	if (!FUNC1(tp))
		FUNC7(ERROR,
				(FUNC8(ERRCODE_UNDEFINED_OBJECT),
				 FUNC9("user mapping not found for \"%s\"",
						FUNC2(userid))));

	um = (UserMapping *) FUNC10(sizeof(UserMapping));
	um->umid = ((Form_pg_user_mapping) FUNC0(tp))->oid;
	um->userid = userid;
	um->serverid = serverid;

	/* Extract the umoptions */
	datum = FUNC6(USERMAPPINGUSERSERVER,
							tp,
							Anum_pg_user_mapping_umoptions,
							&isnull);
	if (isnull)
		um->options = NIL;
	else
		um->options = FUNC11(datum);

	FUNC4(tp);

	return um;
}