#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_19__ {scalar_t__ objectId; scalar_t__ objectSubId; int /*<<< orphan*/  classId; } ;
struct TYPE_18__ {int /*<<< orphan*/  rd_att; TYPE_1__* rd_rel; } ;
struct TYPE_17__ {scalar_t__ relrewrite; } ;
typedef  TYPE_2__* Relation ;
typedef  scalar_t__ OnCommitAction ;
typedef  scalar_t__ Oid ;
typedef  TYPE_3__ ObjectAddress ;
typedef  int /*<<< orphan*/  MultiXactId ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  Acl ;

/* Variables and functions */
 int /*<<< orphan*/  AccessMethodRelationId ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ FUNC2 (char const*,scalar_t__,scalar_t__,char,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  Anum_pg_type_oid ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  CHKATYPE_ANYARRAY ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEFAULT_TYPDELIM ; 
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_TABLE ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_ARRAY_IN ; 
 int /*<<< orphan*/  F_ARRAY_OUT ; 
 int /*<<< orphan*/  F_ARRAY_RECV ; 
 int /*<<< orphan*/  F_ARRAY_SEND ; 
 int /*<<< orphan*/  F_ARRAY_TYPANALYZE ; 
 scalar_t__ GLOBALTABLESPACE_OID ; 
 scalar_t__ FUNC7 (scalar_t__,TYPE_2__*,char) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ IsBinaryUpgrade ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ IsUnderPostmaster ; 
 int /*<<< orphan*/  NamespaceRelationId ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  OBJECT_SEQUENCE ; 
 int /*<<< orphan*/  OBJECT_TABLE ; 
 scalar_t__ ONCOMMIT_NOOP ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 char RELKIND_COMPOSITE_TYPE ; 
#define  RELKIND_FOREIGN_TABLE 133 
#define  RELKIND_MATVIEW 132 
#define  RELKIND_PARTITIONED_TABLE 131 
#define  RELKIND_RELATION 130 
#define  RELKIND_SEQUENCE 129 
 char RELKIND_TOASTVALUE ; 
#define  RELKIND_VIEW 128 
 scalar_t__ FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TYPCATEGORY_ARRAY ; 
 int /*<<< orphan*/  TYPENAMENSP ; 
 int /*<<< orphan*/  TYPTYPE_BASE ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char,char,int,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  TypeRelationId ; 
 scalar_t__ binary_upgrade_next_heap_pg_class_oid ; 
 scalar_t__ binary_upgrade_next_toast_pg_class_oid ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 
 scalar_t__ FUNC23 (char const*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 TYPE_2__* FUNC25 (char const*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,char,char,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC26 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC33 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Oid
FUNC36(const char *relname,
						 Oid relnamespace,
						 Oid reltablespace,
						 Oid relid,
						 Oid reltypeid,
						 Oid reloftypeid,
						 Oid ownerid,
						 Oid accessmtd,
						 TupleDesc tupdesc,
						 List *cooked_constraints,
						 char relkind,
						 char relpersistence,
						 bool shared_relation,
						 bool mapped_relation,
						 OnCommitAction oncommit,
						 Datum reloptions,
						 bool use_user_acl,
						 bool allow_system_table_mods,
						 bool is_internal,
						 Oid relrewrite,
						 ObjectAddress *typaddress)
{
	Relation	pg_class_desc;
	Relation	new_rel_desc;
	Acl		   *relacl;
	Oid			existing_relid;
	Oid			old_type_oid;
	Oid			new_type_oid;
	ObjectAddress new_type_addr;
	Oid			new_array_oid = InvalidOid;
	TransactionId relfrozenxid;
	MultiXactId relminmxid;

	pg_class_desc = FUNC35(RelationRelationId, RowExclusiveLock);

	/*
	 * sanity checks
	 */
	FUNC3(FUNC11() || FUNC10());

	/*
	 * Validate proposed tupdesc for the desired relkind.  If
	 * allow_system_table_mods is on, allow ANYARRAY to be used; this is a
	 * hack to allow creating pg_statistic and cloning it during VACUUM FULL.
	 */
	FUNC6(tupdesc, relkind,
							 allow_system_table_mods ? CHKATYPE_ANYARRAY : 0);

	/*
	 * This would fail later on anyway, if the relation already exists.  But
	 * by catching it here we can emit a nicer error message.
	 */
	existing_relid = FUNC23(relname, relnamespace);
	if (existing_relid != InvalidOid)
		FUNC19(ERROR,
				(FUNC20(ERRCODE_DUPLICATE_TABLE),
				 FUNC22("relation \"%s\" already exists", relname)));

	/*
	 * Since we are going to create a rowtype as well, also check for
	 * collision with an existing type name.  If there is one and it's an
	 * autogenerated array, we can rename it out of the way; otherwise we can
	 * at least give a good error message.
	 */
	old_type_oid = FUNC8(TYPENAMENSP, Anum_pg_type_oid,
								   FUNC5(relname),
								   FUNC12(relnamespace));
	if (FUNC13(old_type_oid))
	{
		if (!FUNC27(old_type_oid, relname, relnamespace))
			FUNC19(ERROR,
					(FUNC20(ERRCODE_DUPLICATE_OBJECT),
					 FUNC22("type \"%s\" already exists", relname),
					 FUNC21("A relation has an associated type of the same name, "
							 "so you must use a name that doesn't conflict "
							 "with any existing type.")));
	}

	/*
	 * Shared relations must be in pg_global (last-ditch check)
	 */
	if (shared_relation && reltablespace != GLOBALTABLESPACE_OID)
		FUNC18(ERROR, "shared relations must be placed in pg_global tablespace");

	/*
	 * Allocate an OID for the relation, unless we were told what to use.
	 *
	 * The OID will be the relfilenode as well, so make sure it doesn't
	 * collide with either pg_class OIDs or existing physical files.
	 */
	if (!FUNC13(relid))
	{
		/* Use binary-upgrade override for pg_class.oid/relfilenode? */
		if (IsBinaryUpgrade &&
			(relkind == RELKIND_RELATION || relkind == RELKIND_SEQUENCE ||
			 relkind == RELKIND_VIEW || relkind == RELKIND_MATVIEW ||
			 relkind == RELKIND_COMPOSITE_TYPE || relkind == RELKIND_FOREIGN_TABLE ||
			 relkind == RELKIND_PARTITIONED_TABLE))
		{
			if (!FUNC13(binary_upgrade_next_heap_pg_class_oid))
				FUNC19(ERROR,
						(FUNC20(ERRCODE_INVALID_PARAMETER_VALUE),
						 FUNC22("pg_class heap OID value not set when in binary upgrade mode")));

			relid = binary_upgrade_next_heap_pg_class_oid;
			binary_upgrade_next_heap_pg_class_oid = InvalidOid;
		}
		/* There might be no TOAST table, so we have to test for it. */
		else if (IsBinaryUpgrade &&
				 FUNC13(binary_upgrade_next_toast_pg_class_oid) &&
				 relkind == RELKIND_TOASTVALUE)
		{
			relid = binary_upgrade_next_toast_pg_class_oid;
			binary_upgrade_next_toast_pg_class_oid = InvalidOid;
		}
		else
			relid = FUNC7(reltablespace, pg_class_desc,
									  relpersistence);
	}

	/*
	 * Determine the relation's initial permissions.
	 */
	if (use_user_acl)
	{
		switch (relkind)
		{
			case RELKIND_RELATION:
			case RELKIND_VIEW:
			case RELKIND_MATVIEW:
			case RELKIND_FOREIGN_TABLE:
			case RELKIND_PARTITIONED_TABLE:
				relacl = FUNC24(OBJECT_TABLE, ownerid,
											  relnamespace);
				break;
			case RELKIND_SEQUENCE:
				relacl = FUNC24(OBJECT_SEQUENCE, ownerid,
											  relnamespace);
				break;
			default:
				relacl = NULL;
				break;
		}
	}
	else
		relacl = NULL;

	/*
	 * Create the relcache entry (mostly dummy at this point) and the physical
	 * disk file.  (If we fail further down, it's the smgr's responsibility to
	 * remove the disk file again.)
	 */
	new_rel_desc = FUNC25(relname,
							   relnamespace,
							   reltablespace,
							   relid,
							   InvalidOid,
							   accessmtd,
							   tupdesc,
							   relkind,
							   relpersistence,
							   shared_relation,
							   mapped_relation,
							   allow_system_table_mods,
							   &relfrozenxid,
							   &relminmxid);

	FUNC3(relid == FUNC15(new_rel_desc));

	new_rel_desc->rd_rel->relrewrite = relrewrite;

	/*
	 * Decide whether to create an array type over the relation's rowtype. We
	 * do not create any array types for system catalogs (ie, those made
	 * during initdb). We do not create them where the use of a relation as
	 * such is an implementation detail: toast tables, sequences and indexes.
	 */
	if (IsUnderPostmaster && (relkind == RELKIND_RELATION ||
							  relkind == RELKIND_VIEW ||
							  relkind == RELKIND_MATVIEW ||
							  relkind == RELKIND_FOREIGN_TABLE ||
							  relkind == RELKIND_COMPOSITE_TYPE ||
							  relkind == RELKIND_PARTITIONED_TABLE))
		new_array_oid = FUNC4();

	/*
	 * Since defining a relation also defines a complex type, we add a new
	 * system type corresponding to the new relation.  The OID of the type can
	 * be preselected by the caller, but if reltypeid is InvalidOid, we'll
	 * generate a new OID for it.
	 *
	 * NOTE: we could get a unique-index failure here, in case someone else is
	 * creating the same type name in parallel but hadn't committed yet when
	 * we checked for a duplicate name above.
	 */
	new_type_addr = FUNC2(relname,
									   relnamespace,
									   relid,
									   relkind,
									   ownerid,
									   reltypeid,
									   new_array_oid);
	new_type_oid = new_type_addr.objectId;
	if (typaddress)
		*typaddress = new_type_addr;

	/*
	 * Now make the array type if wanted.
	 */
	if (FUNC13(new_array_oid))
	{
		char	   *relarrayname;

		relarrayname = FUNC26(relname, relnamespace);

		FUNC17(new_array_oid,	/* force the type's OID to this */
				   relarrayname,	/* Array type name */
				   relnamespace,	/* Same namespace as parent */
				   InvalidOid,	/* Not composite, no relationOid */
				   0,			/* relkind, also N/A here */
				   ownerid,		/* owner's ID */
				   -1,			/* Internal size (varlena) */
				   TYPTYPE_BASE,	/* Not composite - typelem is */
				   TYPCATEGORY_ARRAY,	/* type-category (array) */
				   false,		/* array types are never preferred */
				   DEFAULT_TYPDELIM,	/* default array delimiter */
				   F_ARRAY_IN,	/* array input proc */
				   F_ARRAY_OUT, /* array output proc */
				   F_ARRAY_RECV,	/* array recv (bin) proc */
				   F_ARRAY_SEND,	/* array send (bin) proc */
				   InvalidOid,	/* typmodin procedure - none */
				   InvalidOid,	/* typmodout procedure - none */
				   F_ARRAY_TYPANALYZE,	/* array analyze procedure */
				   new_type_oid,	/* array element type - the rowtype */
				   true,		/* yes, this is an array type */
				   InvalidOid,	/* this has no array type */
				   InvalidOid,	/* domain base type - irrelevant */
				   NULL,		/* default value - none */
				   NULL,		/* default binary representation */
				   false,		/* passed by reference */
				   'd',			/* alignment - must be the largest! */
				   'x',			/* fully TOASTable */
				   -1,			/* typmod */
				   0,			/* array dimensions for typBaseType */
				   false,		/* Type NOT NULL */
				   InvalidOid); /* rowtypes never have a collation */

		FUNC28(relarrayname);
	}

	/*
	 * now create an entry in pg_class for the relation.
	 *
	 * NOTE: we could get a unique-index failure here, in case someone else is
	 * creating the same relation name in parallel but hadn't committed yet
	 * when we checked for a duplicate name above.
	 */
	FUNC1(pg_class_desc,
						new_rel_desc,
						relid,
						new_type_oid,
						reloftypeid,
						ownerid,
						relkind,
						relfrozenxid,
						relminmxid,
						FUNC14(relacl),
						reloptions);

	/*
	 * now add tuples to pg_attribute for the attributes in our new relation.
	 */
	FUNC0(relid, new_rel_desc->rd_att, relkind);

	/*
	 * Make a dependency link to force the relation to be deleted if its
	 * namespace is.  Also make a dependency link to its owner, as well as
	 * dependencies for any roles mentioned in the default ACL.
	 *
	 * For composite types, these dependencies are tracked for the pg_type
	 * entry, so we needn't record them here.  Likewise, TOAST tables don't
	 * need a namespace dependency (they live in a pinned namespace) nor an
	 * owner dependency (they depend indirectly through the parent table), nor
	 * should they have any ACL entries.  The same applies for extension
	 * dependencies.
	 *
	 * Also, skip this in bootstrap mode, since we don't make dependencies
	 * while bootstrapping.
	 */
	if (relkind != RELKIND_COMPOSITE_TYPE &&
		relkind != RELKIND_TOASTVALUE &&
		!FUNC10())
	{
		ObjectAddress myself,
					referenced;

		myself.classId = RelationRelationId;
		myself.objectId = relid;
		myself.objectSubId = 0;

		referenced.classId = NamespaceRelationId;
		referenced.objectId = relnamespace;
		referenced.objectSubId = 0;
		FUNC29(&myself, &referenced, DEPENDENCY_NORMAL);

		FUNC32(RelationRelationId, relid, ownerid);

		FUNC31(RelationRelationId, relid, 0, ownerid, relacl);

		FUNC30(&myself, false);

		if (reloftypeid)
		{
			referenced.classId = TypeRelationId;
			referenced.objectId = reloftypeid;
			referenced.objectSubId = 0;
			FUNC29(&myself, &referenced, DEPENDENCY_NORMAL);
		}

		/*
		 * Make a dependency link to force the relation to be deleted if its
		 * access method is. Do this only for relation and materialized views.
		 *
		 * No need to add an explicit dependency for the toast table, as the
		 * main table depends on it.
		 */
		if (relkind == RELKIND_RELATION ||
			relkind == RELKIND_MATVIEW)
		{
			referenced.classId = AccessMethodRelationId;
			referenced.objectId = accessmtd;
			referenced.objectSubId = 0;
			FUNC29(&myself, &referenced, DEPENDENCY_NORMAL);
		}
	}

	/* Post creation hook for new relation */
	FUNC9(RelationRelationId, relid, 0, is_internal);

	/*
	 * Store any supplied constraints and defaults.
	 *
	 * NB: this may do a CommandCounterIncrement and rebuild the relcache
	 * entry, so the relation must be valid and self-consistent at this point.
	 * In particular, there are not yet constraints and defaults anywhere.
	 */
	FUNC16(new_rel_desc, cooked_constraints, is_internal);

	/*
	 * If there's a special on-commit action, remember it
	 */
	if (oncommit != ONCOMMIT_NOOP)
		FUNC33(relid, oncommit);

	/*
	 * ok, the relation has been cataloged, so close our relations and return
	 * the OID of the newly created relation.
	 */
	FUNC34(new_rel_desc, NoLock);	/* do not unlock till end of xact */
	FUNC34(pg_class_desc, RowExclusiveLock);

	return relid;
}