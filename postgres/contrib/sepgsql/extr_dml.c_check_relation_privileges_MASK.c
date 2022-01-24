#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_5__ {scalar_t__ objectSubId; void* objectId; void* classId; } ;
typedef  void* Oid ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  Bitmapset ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FirstLowInvalidHeapAttributeNumber ; 
 scalar_t__ FUNC1 (void*) ; 
#define  RELKIND_PARTITIONED_TABLE 131 
#define  RELKIND_RELATION 130 
#define  RELKIND_SEQUENCE 129 
 char RELKIND_TOASTVALUE ; 
#define  RELKIND_VIEW 128 
 void* RelationRelationId ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_COLUMN ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_SEQUENCE ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_TABLE ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_VIEW ; 
 int SEPG_DB_COLUMN__INSERT ; 
 int SEPG_DB_COLUMN__SELECT ; 
 int SEPG_DB_COLUMN__UPDATE ; 
 int SEPG_DB_SEQUENCE__GET_VALUE ; 
 int SEPG_DB_TABLE__DELETE ; 
 int SEPG_DB_TABLE__INSERT ; 
 int SEPG_DB_TABLE__SELECT ; 
 int SEPG_DB_TABLE__UPDATE ; 
 int SEPG_DB_VIEW__EXPAND ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (void*,int /*<<< orphan*/ *) ; 
 char* FUNC9 (TYPE_1__*) ; 
 char* FUNC10 (TYPE_1__*) ; 
 char FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int,char*,int) ; 
 scalar_t__ FUNC14 () ; 

__attribute__((used)) static bool
FUNC15(Oid relOid,
						  Bitmapset *selected,
						  Bitmapset *inserted,
						  Bitmapset *updated,
						  uint32 required,
						  bool abort_on_violation)
{
	ObjectAddress object;
	char	   *audit_name;
	Bitmapset  *columns;
	int			index;
	char		relkind = FUNC11(relOid);
	bool		result = true;

	/*
	 * Hardwired Policies: SE-PostgreSQL enforces - clients cannot modify
	 * system catalogs using DMLs - clients cannot reference/modify toast
	 * relations using DMLs
	 */
	if (FUNC14() > 0)
	{
		if ((required & (SEPG_DB_TABLE__UPDATE |
						 SEPG_DB_TABLE__INSERT |
						 SEPG_DB_TABLE__DELETE)) != 0 &&
			FUNC1(relOid))
			FUNC5(ERROR,
					(FUNC6(ERRCODE_INSUFFICIENT_PRIVILEGE),
					 FUNC7("SELinux: hardwired security policy violation")));

		if (relkind == RELKIND_TOASTVALUE)
			FUNC5(ERROR,
					(FUNC6(ERRCODE_INSUFFICIENT_PRIVILEGE),
					 FUNC7("SELinux: hardwired security policy violation")));
	}

	/*
	 * Check permissions on the relation
	 */
	object.classId = RelationRelationId;
	object.objectId = relOid;
	object.objectSubId = 0;
	audit_name = FUNC10(&object);
	switch (relkind)
	{
		case RELKIND_RELATION:
		case RELKIND_PARTITIONED_TABLE:
			result = FUNC13(&object,
											 SEPG_CLASS_DB_TABLE,
											 required,
											 audit_name,
											 abort_on_violation);
			break;

		case RELKIND_SEQUENCE:
			FUNC0((required & ~SEPG_DB_TABLE__SELECT) == 0);

			if (required & SEPG_DB_TABLE__SELECT)
				result = FUNC13(&object,
												 SEPG_CLASS_DB_SEQUENCE,
												 SEPG_DB_SEQUENCE__GET_VALUE,
												 audit_name,
												 abort_on_violation);
			break;

		case RELKIND_VIEW:
			result = FUNC13(&object,
											 SEPG_CLASS_DB_VIEW,
											 SEPG_DB_VIEW__EXPAND,
											 audit_name,
											 abort_on_violation);
			break;

		default:
			/* nothing to be checked */
			break;
	}
	FUNC12(audit_name);

	/*
	 * Only columns owned by relations shall be checked
	 */
	if (relkind != RELKIND_RELATION && relkind != RELKIND_PARTITIONED_TABLE)
		return true;

	/*
	 * Check permissions on the columns
	 */
	selected = FUNC8(relOid, selected);
	inserted = FUNC8(relOid, inserted);
	updated = FUNC8(relOid, updated);
	columns = FUNC4(selected, FUNC4(inserted, updated));

	while ((index = FUNC2(columns)) >= 0)
	{
		AttrNumber	attnum;
		uint32		column_perms = 0;

		if (FUNC3(index, selected))
			column_perms |= SEPG_DB_COLUMN__SELECT;
		if (FUNC3(index, inserted))
		{
			if (required & SEPG_DB_TABLE__INSERT)
				column_perms |= SEPG_DB_COLUMN__INSERT;
		}
		if (FUNC3(index, updated))
		{
			if (required & SEPG_DB_TABLE__UPDATE)
				column_perms |= SEPG_DB_COLUMN__UPDATE;
		}
		if (column_perms == 0)
			continue;

		/* obtain column's permission */
		attnum = index + FirstLowInvalidHeapAttributeNumber;

		object.classId = RelationRelationId;
		object.objectId = relOid;
		object.objectSubId = attnum;
		audit_name = FUNC9(&object);

		result = FUNC13(&object,
										 SEPG_CLASS_DB_COLUMN,
										 column_perms,
										 audit_name,
										 abort_on_violation);
		FUNC12(audit_name);

		if (!result)
			return result;
	}
	return true;
}