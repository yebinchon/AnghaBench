#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Archive ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC11(Archive *fout,
								 PQExpBuffer upgrade_buffer, Oid pg_class_oid,
								 bool is_index)
{
	PQExpBuffer upgrade_query = FUNC9();
	PGresult   *upgrade_res;
	Oid			pg_class_reltoastrelid;
	Oid			pg_index_indexrelid;

	FUNC5(upgrade_query,
					  "SELECT c.reltoastrelid, i.indexrelid "
					  "FROM pg_catalog.pg_class c LEFT JOIN "
					  "pg_catalog.pg_index i ON (c.reltoastrelid = i.indrelid AND i.indisvalid) "
					  "WHERE c.oid = '%u'::pg_catalog.oid;",
					  pg_class_oid);

	upgrade_res = FUNC0(fout, upgrade_query->data);

	pg_class_reltoastrelid = FUNC8(FUNC4(upgrade_res, 0, FUNC3(upgrade_res, "reltoastrelid")));
	pg_index_indexrelid = FUNC8(FUNC4(upgrade_res, 0, FUNC3(upgrade_res, "indexrelid")));

	FUNC7(upgrade_buffer,
						 "\n-- For binary upgrade, must preserve pg_class oids\n");

	if (!is_index)
	{
		FUNC5(upgrade_buffer,
						  "SELECT pg_catalog.binary_upgrade_set_next_heap_pg_class_oid('%u'::pg_catalog.oid);\n",
						  pg_class_oid);
		/* only tables have toast tables, not indexes */
		if (FUNC1(pg_class_reltoastrelid))
		{
			/*
			 * One complexity is that the table definition might not require
			 * the creation of a TOAST table, and the TOAST table might have
			 * been created long after table creation, when the table was
			 * loaded with wide data.  By setting the TOAST oid we force
			 * creation of the TOAST heap and TOAST index by the backend so we
			 * can cleanly copy the files during binary upgrade.
			 */

			FUNC5(upgrade_buffer,
							  "SELECT pg_catalog.binary_upgrade_set_next_toast_pg_class_oid('%u'::pg_catalog.oid);\n",
							  pg_class_reltoastrelid);

			/* every toast table has an index */
			FUNC5(upgrade_buffer,
							  "SELECT pg_catalog.binary_upgrade_set_next_index_pg_class_oid('%u'::pg_catalog.oid);\n",
							  pg_index_indexrelid);
		}
	}
	else
		FUNC5(upgrade_buffer,
						  "SELECT pg_catalog.binary_upgrade_set_next_index_pg_class_oid('%u'::pg_catalog.oid);\n",
						  pg_class_oid);

	FUNC6(upgrade_buffer, '\n');

	FUNC2(upgrade_res);
	FUNC10(upgrade_query);
}