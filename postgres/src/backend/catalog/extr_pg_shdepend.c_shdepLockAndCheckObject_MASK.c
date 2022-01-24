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
typedef  int Oid ;

/* Variables and functions */
 int /*<<< orphan*/  AUTHOID ; 
 int /*<<< orphan*/  AccessShareLock ; 
#define  AuthIdRelationId 130 
#define  DatabaseRelationId 129 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  TableSpaceRelationId 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 char* FUNC7 (int) ; 
 char* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

void
FUNC10(Oid classId, Oid objectId)
{
	/* AccessShareLock should be OK, since we are not modifying the object */
	FUNC0(classId, objectId, 0, AccessShareLock);

	switch (classId)
	{
		case AuthIdRelationId:
			if (!FUNC2(AUTHOID, FUNC1(objectId)))
				FUNC4(ERROR,
						(FUNC5(ERRCODE_UNDEFINED_OBJECT),
						 FUNC6("role %u was concurrently dropped",
								objectId)));
			break;

			/*
			 * Currently, this routine need not support any other shared
			 * object types besides roles.  If we wanted to record explicit
			 * dependencies on databases or tablespaces, we'd need code along
			 * these lines:
			 */
#ifdef NOT_USED
		case TableSpaceRelationId:
			{
				/* For lack of a syscache on pg_tablespace, do this: */
				char	   *tablespace = get_tablespace_name(objectId);

				if (tablespace == NULL)
					ereport(ERROR,
							(errcode(ERRCODE_UNDEFINED_OBJECT),
							 errmsg("tablespace %u was concurrently dropped",
									objectId)));
				pfree(tablespace);
				break;
			}
#endif

		case DatabaseRelationId:
			{
				/* For lack of a syscache on pg_database, do this: */
				char	   *database = FUNC7(objectId);

				if (database == NULL)
					FUNC4(ERROR,
							(FUNC5(ERRCODE_UNDEFINED_OBJECT),
							 FUNC6("database %u was concurrently dropped",
									objectId)));
				FUNC9(database);
				break;
			}


		default:
			FUNC3(ERROR, "unrecognized shared classId: %u", classId);
	}
}