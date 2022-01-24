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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  desc_file ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shdesc_file ; 

__attribute__((used)) static void
FUNC3(FILE *cmdfd)
{
	FUNC1("CREATE TEMP TABLE tmp_pg_description ( "
				"	objoid oid, "
				"	classname name, "
				"	objsubid int4, "
				"	description text);\n\n");

	FUNC0("COPY tmp_pg_description FROM E'%s';\n\n",
				   FUNC2(desc_file));

	FUNC1("INSERT INTO pg_description "
				" SELECT t.objoid, c.oid, t.objsubid, t.description "
				"  FROM tmp_pg_description t, pg_class c "
				"    WHERE c.relname = t.classname;\n\n");

	FUNC1("CREATE TEMP TABLE tmp_pg_shdescription ( "
				" objoid oid, "
				" classname name, "
				" description text);\n\n");

	FUNC0("COPY tmp_pg_shdescription FROM E'%s';\n\n",
				   FUNC2(shdesc_file));

	FUNC1("INSERT INTO pg_shdescription "
				" SELECT t.objoid, c.oid, t.description "
				"  FROM tmp_pg_shdescription t, pg_class c "
				"   WHERE c.relname = t.classname;\n\n");

	/* Create default descriptions for operator implementation functions */
	FUNC1("WITH funcdescs AS ( "
				"SELECT p.oid as p_oid, o.oid as o_oid, oprname "
				"FROM pg_proc p JOIN pg_operator o ON oprcode = p.oid ) "
				"INSERT INTO pg_description "
				"  SELECT p_oid, 'pg_proc'::regclass, 0, "
				"    'implementation of ' || oprname || ' operator' "
				"  FROM funcdescs "
				"  WHERE NOT EXISTS (SELECT 1 FROM pg_description "
				"   WHERE objoid = p_oid AND classoid = 'pg_proc'::regclass) "
				"  AND NOT EXISTS (SELECT 1 FROM pg_description "
				"   WHERE objoid = o_oid AND classoid = 'pg_operator'::regclass"
				"         AND description LIKE 'deprecated%');\n\n");

	/*
	 * Even though the tables are temp, drop them explicitly so they don't get
	 * copied into template0/postgres databases.
	 */
	FUNC1("DROP TABLE tmp_pg_description;\n\n");
	FUNC1("DROP TABLE tmp_pg_shdescription;\n\n");
}