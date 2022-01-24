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
struct variable {int /*<<< orphan*/  type; } ;
struct statement {int /*<<< orphan*/  lineno; TYPE_1__* connection; int /*<<< orphan*/  compat; } ;
struct ECPGtype_information_cache {int oid; int isarray; struct ECPGtype_information_cache* next; } ;
typedef  enum ARRAY_TYPE { ____Placeholder_ARRAY_TYPE } ARRAY_TYPE ;
struct TYPE_2__ {struct ECPGtype_information_cache* cache_head; int /*<<< orphan*/  connection; } ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int BITOID ; 
 int BOOLOID ; 
 int BOXOID ; 
 int BPCHAROID ; 
 int BYTEAOID ; 
 int CASHOID ; 
 int CHAROID ; 
 int CIDOID ; 
 int CIDROID ; 
 int CIRCLEOID ; 
 int DATEOID ; 
 int ECPG_ARRAY_ARRAY ; 
 int ECPG_ARRAY_ERROR ; 
 int ECPG_ARRAY_NONE ; 
 int ECPG_ARRAY_NOT_SET ; 
 int ECPG_ARRAY_VECTOR ; 
 scalar_t__ FUNC0 (int) ; 
 int FLOAT4OID ; 
 int FLOAT8OID ; 
 int INETOID ; 
 int INT2OID ; 
 int INT2VECTOROID ; 
 int INT4OID ; 
 int INT8OID ; 
 int INTERVALOID ; 
 int LINEOID ; 
 int LSEGOID ; 
 int NAMEOID ; 
 int NUMERICOID ; 
 int OIDOID ; 
 int OIDVECTOROID ; 
 int PATHOID ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int POINTOID ; 
 int POLYGONOID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int REGPROCOID ; 
 scalar_t__ SQL3_CHARACTER ; 
 scalar_t__ SQL3_CHARACTER_VARYING ; 
 int TEXTOID ; 
 int TIDOID ; 
 int TIMEOID ; 
 int TIMESTAMPOID ; 
 int TIMESTAMPTZOID ; 
 int TIMETZOID ; 
 int UNKNOWNOID ; 
 int VARBITOID ; 
 int VARCHAROID ; 
 int XIDOID ; 
 int FUNC6 (char*) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct ECPGtype_information_cache**,int,int,int /*<<< orphan*/ ) ; 
 int not_an_array_in_ecpg ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 scalar_t__ FUNC14 (char*) ; 

__attribute__((used)) static enum ARRAY_TYPE
FUNC15(int type, const struct statement *stmt, const struct variable *var)
{
	char	   *array_query;
	enum ARRAY_TYPE isarray = ECPG_ARRAY_NOT_SET;
	PGresult   *query;
	struct ECPGtype_information_cache *cache_entry;

	if ((stmt->connection->cache_head) == NULL)
	{
		/*
		 * Text like types are not an array for ecpg, but postgres counts them
		 * as an array. This define reminds you to not 'correct' these values.
		 */
#define not_an_array_in_ecpg ECPG_ARRAY_NONE

		/* populate cache with well known types to speed things up */
		if (!FUNC12(&(stmt->connection->cache_head), BOOLOID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), BYTEAOID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), CHAROID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), NAMEOID, not_an_array_in_ecpg, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), INT8OID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), INT2OID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), INT2VECTOROID, ECPG_ARRAY_VECTOR, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), INT4OID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), REGPROCOID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), TEXTOID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), OIDOID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), TIDOID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), XIDOID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), CIDOID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), OIDVECTOROID, ECPG_ARRAY_VECTOR, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), POINTOID, ECPG_ARRAY_VECTOR, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), LSEGOID, ECPG_ARRAY_VECTOR, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), PATHOID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), BOXOID, ECPG_ARRAY_VECTOR, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), POLYGONOID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), LINEOID, ECPG_ARRAY_VECTOR, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), FLOAT4OID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), FLOAT8OID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), UNKNOWNOID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), CIRCLEOID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), CASHOID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), INETOID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), CIDROID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), BPCHAROID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), VARCHAROID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), DATEOID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), TIMEOID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), TIMESTAMPOID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), TIMESTAMPTZOID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), INTERVALOID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), TIMETZOID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), BITOID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), VARBITOID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
		if (!FUNC12(&(stmt->connection->cache_head), NUMERICOID, ECPG_ARRAY_NONE, stmt->lineno))
			return ECPG_ARRAY_ERROR;
	}

	for (cache_entry = (stmt->connection->cache_head); cache_entry != NULL; cache_entry = cache_entry->next)
	{
		if (cache_entry->oid == type)
			return cache_entry->isarray;
	}

	array_query = (char *) FUNC7(FUNC14("select typlen from pg_type where oid= and typelem<>0") + 11, stmt->lineno);
	if (array_query == NULL)
		return ECPG_ARRAY_ERROR;

	FUNC13(array_query, "select typlen from pg_type where oid=%d and typelem<>0", type);
	query = FUNC2(stmt->connection->connection, array_query);
	FUNC10(array_query);
	if (!FUNC8(query, stmt->lineno, stmt->connection->connection, stmt->compat))
		return ECPG_ARRAY_ERROR;
	else if (FUNC5(query) == PGRES_TUPLES_OK)
	{
		if (FUNC4(query) == 0)
			isarray = ECPG_ARRAY_NONE;
		else
		{
			isarray = (FUNC6((char *) FUNC3(query, 0, 0)) == -1) ? ECPG_ARRAY_ARRAY : ECPG_ARRAY_VECTOR;
			if (FUNC9(type) == SQL3_CHARACTER ||
				FUNC9(type) == SQL3_CHARACTER_VARYING)
			{
				/*
				 * arrays of character strings are not yet implemented
				 */
				isarray = ECPG_ARRAY_NONE;
			}
		}
		FUNC1(query);
	}
	else
		return ECPG_ARRAY_ERROR;

	FUNC12(&(stmt->connection->cache_head), type, isarray, stmt->lineno);
	FUNC11("ecpg_is_type_an_array on line %d: type (%d); C (%d); array (%s)\n", stmt->lineno, type, var->type, FUNC0(isarray) ? "yes" : "no");
	return isarray;
}