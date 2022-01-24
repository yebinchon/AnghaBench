#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct selabel_handle {int dummy; } ;
typedef  int /*<<< orphan*/  security_context_t ;
struct TYPE_14__ {int /*<<< orphan*/  attnum; int /*<<< orphan*/  attrelid; int /*<<< orphan*/  attname; } ;
struct TYPE_13__ {int relnamespace; int /*<<< orphan*/  oid; int /*<<< orphan*/  relname; int /*<<< orphan*/  relkind; } ;
struct TYPE_12__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  datname; } ;
struct TYPE_11__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  nspname; } ;
struct TYPE_10__ {int pronamespace; int /*<<< orphan*/  oid; int /*<<< orphan*/  proname; } ;
struct TYPE_9__ {int classId; int /*<<< orphan*/  objectSubId; int /*<<< orphan*/  objectId; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int Oid ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_proc ;
typedef  TYPE_3__* Form_pg_namespace ;
typedef  TYPE_4__* Form_pg_database ;
typedef  TYPE_5__* Form_pg_class ;
typedef  TYPE_6__* Form_pg_attribute ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
#define  AttributeRelationId 132 
#define  DatabaseRelationId 131 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
#define  NamespaceRelationId 130 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
#define  ProcedureRelationId 129 
 int /*<<< orphan*/  RELKIND_PARTITIONED_TABLE ; 
 int /*<<< orphan*/  RELKIND_RELATION ; 
 int /*<<< orphan*/  RELKIND_SEQUENCE ; 
 int /*<<< orphan*/  RELKIND_VIEW ; 
#define  RelationRelationId 128 
 int SELABEL_DB_COLUMN ; 
 int SELABEL_DB_DATABASE ; 
 int SELABEL_DB_PROCEDURE ; 
 int SELABEL_DB_SCHEMA ; 
 int SELABEL_DB_SEQUENCE ; 
 int SELABEL_DB_TABLE ; 
 int SELABEL_DB_VIEW ; 
 int /*<<< orphan*/  SEPGSQL_LABEL_TAG ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 char* FUNC13 (int) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 char* FUNC18 (char*,char*,char*,char*) ; 
 scalar_t__ FUNC19 (struct selabel_handle*,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC26(struct selabel_handle *sehnd, Oid catalogId)
{
	Relation	rel;
	SysScanDesc sscan;
	HeapTuple	tuple;
	char	   *database_name = FUNC12(MyDatabaseId);
	char	   *namespace_name;
	Oid			namespace_id;
	char	   *relation_name;

	/*
	 * Open the target catalog. We don't want to allow writable accesses by
	 * other session during initial labeling.
	 */
	rel = FUNC25(catalogId, AccessShareLock);

	sscan = FUNC21(rel, InvalidOid, false,
							   NULL, 0, NULL);
	while (FUNC1(tuple = FUNC23(sscan)))
	{
		Form_pg_database datForm;
		Form_pg_namespace nspForm;
		Form_pg_class relForm;
		Form_pg_attribute attForm;
		Form_pg_proc proForm;
		char	   *objname;
		int			objtype = 1234;
		ObjectAddress object;
		security_context_t context;

		/*
		 * The way to determine object name depends on object classes. So, any
		 * branches set up `objtype', `objname' and `object' here.
		 */
		switch (catalogId)
		{
			case DatabaseRelationId:
				datForm = (Form_pg_database) FUNC0(tuple);

				objtype = SELABEL_DB_DATABASE;

				objname = FUNC18(FUNC2(datForm->datname),
											NULL, NULL, NULL);

				object.classId = DatabaseRelationId;
				object.objectId = datForm->oid;
				object.objectSubId = 0;
				break;

			case NamespaceRelationId:
				nspForm = (Form_pg_namespace) FUNC0(tuple);

				objtype = SELABEL_DB_SCHEMA;

				objname = FUNC18(database_name,
											FUNC2(nspForm->nspname),
											NULL, NULL);

				object.classId = NamespaceRelationId;
				object.objectId = nspForm->oid;
				object.objectSubId = 0;
				break;

			case RelationRelationId:
				relForm = (Form_pg_class) FUNC0(tuple);

				if (relForm->relkind == RELKIND_RELATION ||
					relForm->relkind == RELKIND_PARTITIONED_TABLE)
					objtype = SELABEL_DB_TABLE;
				else if (relForm->relkind == RELKIND_SEQUENCE)
					objtype = SELABEL_DB_SEQUENCE;
				else if (relForm->relkind == RELKIND_VIEW)
					objtype = SELABEL_DB_VIEW;
				else
					continue;	/* no need to assign security label */

				namespace_name = FUNC13(relForm->relnamespace);
				objname = FUNC18(database_name,
											namespace_name,
											FUNC2(relForm->relname),
											NULL);
				FUNC17(namespace_name);

				object.classId = RelationRelationId;
				object.objectId = relForm->oid;
				object.objectSubId = 0;
				break;

			case AttributeRelationId:
				attForm = (Form_pg_attribute) FUNC0(tuple);

				if (FUNC16(attForm->attrelid) != RELKIND_RELATION &&
					FUNC16(attForm->attrelid) != RELKIND_PARTITIONED_TABLE)
					continue;	/* no need to assign security label */

				objtype = SELABEL_DB_COLUMN;

				namespace_id = FUNC15(attForm->attrelid);
				namespace_name = FUNC13(namespace_id);
				relation_name = FUNC14(attForm->attrelid);
				objname = FUNC18(database_name,
											namespace_name,
											relation_name,
											FUNC2(attForm->attname));
				FUNC17(namespace_name);
				FUNC17(relation_name);

				object.classId = RelationRelationId;
				object.objectId = attForm->attrelid;
				object.objectSubId = attForm->attnum;
				break;

			case ProcedureRelationId:
				proForm = (Form_pg_proc) FUNC0(tuple);

				objtype = SELABEL_DB_PROCEDURE;

				namespace_name = FUNC13(proForm->pronamespace);
				objname = FUNC18(database_name,
											namespace_name,
											FUNC2(proForm->proname),
											NULL);
				FUNC17(namespace_name);

				object.classId = ProcedureRelationId;
				object.objectId = proForm->oid;
				object.objectSubId = 0;
				break;

			default:
				FUNC7(ERROR, "unexpected catalog id: %u", catalogId);
				objname = NULL; /* for compiler quiet */
				break;
		}

		if (FUNC19(sehnd, &context, objname, objtype) == 0)
		{
			FUNC5();
			{
				/*
				 * Check SELinux permission to relabel the fetched object,
				 * then do the actual relabeling.
				 */
				FUNC20(&object, context);

				FUNC6(&object, SEPGSQL_LABEL_TAG, context);
			}
			FUNC4();
			{
				FUNC11(context);
			}
			FUNC3();
		}
		else if (errno == ENOENT)
			FUNC8(WARNING,
					(FUNC10("SELinux: no initial label assigned for %s (type=%d), skipping",
							objname, objtype)));
		else
			FUNC8(ERROR,
					(FUNC9(ERRCODE_INTERNAL_ERROR),
					 FUNC10("SELinux: could not determine initial security label for %s (type=%d): %m", objname, objtype)));

		FUNC17(objname);
	}
	FUNC22(sscan);

	FUNC24(rel, NoLock);
}