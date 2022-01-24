#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  serverid; } ;
struct TYPE_10__ {int /*<<< orphan*/  oid; } ;
struct TYPE_9__ {int /*<<< orphan*/  oid; } ;
struct TYPE_8__ {int /*<<< orphan*/  objectId; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_user_mapping ;
typedef  TYPE_3__* Form_pg_authid ;
typedef  TYPE_4__ ForeignServer ;

/* Variables and functions */
 int /*<<< orphan*/  AUTHNAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USERMAPPINGUSERSERVER ; 
 int /*<<< orphan*/  UserMappingRelationId ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (char*,char*) ; 

__attribute__((used)) static ObjectAddress
FUNC16(List *object, bool missing_ok)
{
	ObjectAddress address;
	Oid			userid;
	char	   *username;
	char	   *servername;
	ForeignServer *server;
	HeapTuple	tp;

	FUNC4(address, UserMappingRelationId, InvalidOid);

	/* fetch string names from input lists, for error messages */
	username = FUNC14(FUNC12(object));
	servername = FUNC14(FUNC13(object));

	/* look up pg_authid OID of mapped user; InvalidOid if PUBLIC */
	if (FUNC15(username, "public") == 0)
		userid = InvalidOid;
	else
	{
		tp = FUNC7(AUTHNAME,
							 FUNC0(username));
		if (!FUNC3(tp))
		{
			if (!missing_ok)
				FUNC9(ERROR,
						(FUNC10(ERRCODE_UNDEFINED_OBJECT),
						 FUNC11("user mapping for user \"%s\" on server \"%s\" does not exist",
								username, servername)));
			return address;
		}
		userid = ((Form_pg_authid) FUNC1(tp))->oid;
		FUNC6(tp);
	}

	/* Now look up the pg_user_mapping tuple */
	server = FUNC2(servername, true);
	if (!server)
	{
		if (!missing_ok)
			FUNC9(ERROR,
					(FUNC10(ERRCODE_UNDEFINED_OBJECT),
					 FUNC11("server \"%s\" does not exist", servername)));
		return address;
	}
	tp = FUNC8(USERMAPPINGUSERSERVER,
						 FUNC5(userid),
						 FUNC5(server->serverid));
	if (!FUNC3(tp))
	{
		if (!missing_ok)
			FUNC9(ERROR,
					(FUNC10(ERRCODE_UNDEFINED_OBJECT),
					 FUNC11("user mapping for user \"%s\" on server \"%s\" does not exist",
							username, servername)));
		return address;
	}

	address.objectId = ((Form_pg_user_mapping) FUNC1(tp))->oid;

	FUNC6(tp);

	return address;
}