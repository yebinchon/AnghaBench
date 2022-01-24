#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_12__ {int n_members; TYPE_1__** members; } ;
struct TYPE_11__ {scalar_t__ attnum; scalar_t__ attisdropped; } ;
struct TYPE_10__ {scalar_t__ objectSubId; void* objectId; void* classId; } ;
struct TYPE_9__ {int /*<<< orphan*/  tuple; } ;
typedef  void* Oid ;
typedef  TYPE_2__ ObjectAddress ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_3__* Form_pg_attribute ;
typedef  TYPE_4__ CatCList ;

/* Variables and functions */
 int /*<<< orphan*/  ATTNUM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 void* NamespaceRelationId ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* PG_TOAST_NAMESPACE ; 
#define  RELKIND_INDEX 132 
#define  RELKIND_PARTITIONED_TABLE 131 
#define  RELKIND_RELATION 130 
#define  RELKIND_SEQUENCE 129 
#define  RELKIND_VIEW 128 
 void* RelationRelationId ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_COLUMN ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_SCHEMA ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_SEQUENCE ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_TABLE ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_VIEW ; 
 int /*<<< orphan*/  SEPG_DB_COLUMN__DROP ; 
 int /*<<< orphan*/  SEPG_DB_SCHEMA__REMOVE_NAME ; 
 int /*<<< orphan*/  SEPG_DB_TABLE__DROP ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (TYPE_2__*) ; 
 void* FUNC5 (void*) ; 
 char FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 

void
FUNC10(Oid relOid)
{
	ObjectAddress object;
	char	   *audit_name;
	uint16_t	tclass = 0;
	char		relkind = FUNC6(relOid);

	switch (relkind)
	{
		case RELKIND_RELATION:
		case RELKIND_PARTITIONED_TABLE:
			tclass = SEPG_CLASS_DB_TABLE;
			break;
		case RELKIND_SEQUENCE:
			tclass = SEPG_CLASS_DB_SEQUENCE;
			break;
		case RELKIND_VIEW:
			tclass = SEPG_CLASS_DB_VIEW;
			break;
		case RELKIND_INDEX:
			/* ignore indexes on toast tables */
			if (FUNC5(relOid) == PG_TOAST_NAMESPACE)
				return;
			/* other indexes are handled specially below; no need for tclass */
			break;
		default:
			/* ignore other relkinds */
			return;
	}

	/*
	 * check db_schema:{remove_name} permission
	 */
	object.classId = NamespaceRelationId;
	object.objectId = FUNC5(relOid);
	object.objectSubId = 0;
	audit_name = FUNC4(&object);

	FUNC8(&object,
							SEPG_CLASS_DB_SCHEMA,
							SEPG_DB_SCHEMA__REMOVE_NAME,
							audit_name,
							true);
	FUNC7(audit_name);

	/* deal with indexes specially */
	if (relkind == RELKIND_INDEX)
	{
		FUNC9(relOid);
		return;
	}

	/*
	 * check db_table/sequence/view:{drop} permission
	 */
	object.classId = RelationRelationId;
	object.objectId = relOid;
	object.objectSubId = 0;
	audit_name = FUNC4(&object);

	FUNC8(&object,
							tclass,
							SEPG_DB_TABLE__DROP,
							audit_name,
							true);
	FUNC7(audit_name);

	/*
	 * check db_column:{drop} permission
	 */
	if (relkind == RELKIND_RELATION || relkind == RELKIND_PARTITIONED_TABLE)
	{
		Form_pg_attribute attForm;
		CatCList   *attrList;
		HeapTuple	atttup;
		int			i;

		attrList = FUNC3(ATTNUM, FUNC1(relOid));
		for (i = 0; i < attrList->n_members; i++)
		{
			atttup = &attrList->members[i]->tuple;
			attForm = (Form_pg_attribute) FUNC0(atttup);

			if (attForm->attisdropped)
				continue;

			object.classId = RelationRelationId;
			object.objectId = relOid;
			object.objectSubId = attForm->attnum;
			audit_name = FUNC4(&object);

			FUNC8(&object,
									SEPG_CLASS_DB_COLUMN,
									SEPG_DB_COLUMN__DROP,
									audit_name,
									true);
			FUNC7(audit_name);
		}
		FUNC2(attrList);
	}
}