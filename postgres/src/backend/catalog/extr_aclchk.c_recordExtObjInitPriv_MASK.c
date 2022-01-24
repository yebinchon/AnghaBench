#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ attisdropped; } ;
struct TYPE_3__ {scalar_t__ relkind; int relnatts; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_class ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ATTNUM ; 
 scalar_t__ AccessMethodRelationId ; 
 scalar_t__ AggregateRelationId ; 
 int /*<<< orphan*/  Anum_pg_attribute_attacl ; 
 int /*<<< orphan*/  Anum_pg_class_relacl ; 
 int /*<<< orphan*/  Anum_pg_foreign_data_wrapper_fdwacl ; 
 int /*<<< orphan*/  Anum_pg_foreign_server_srvacl ; 
 int /*<<< orphan*/  Anum_pg_language_lanacl ; 
 int /*<<< orphan*/  Anum_pg_largeobject_metadata_lomacl ; 
 int /*<<< orphan*/  Anum_pg_largeobject_metadata_oid ; 
 int /*<<< orphan*/  Anum_pg_namespace_nspacl ; 
 int /*<<< orphan*/  Anum_pg_proc_proacl ; 
 int /*<<< orphan*/  Anum_pg_type_typacl ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 scalar_t__ CastRelationId ; 
 scalar_t__ CollationRelationId ; 
 scalar_t__ ConversionRelationId ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ EventTriggerRelationId ; 
 int /*<<< orphan*/  FOREIGNDATAWRAPPEROID ; 
 int /*<<< orphan*/  FOREIGNSERVEROID ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ ForeignDataWrapperRelationId ; 
 scalar_t__ ForeignServerRelationId ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  LANGOID ; 
 scalar_t__ LanguageRelationId ; 
 int /*<<< orphan*/  LargeObjectMetadataOidIndexId ; 
 scalar_t__ LargeObjectMetadataRelationId ; 
 int /*<<< orphan*/  NAMESPACEOID ; 
 scalar_t__ NamespaceRelationId ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ OperatorClassRelationId ; 
 scalar_t__ OperatorFamilyRelationId ; 
 scalar_t__ OperatorRelationId ; 
 int /*<<< orphan*/  PROCOID ; 
 scalar_t__ ProcedureRelationId ; 
 scalar_t__ RELKIND_COMPOSITE_TYPE ; 
 scalar_t__ RELKIND_INDEX ; 
 scalar_t__ RELKIND_PARTITIONED_INDEX ; 
 scalar_t__ RELKIND_SEQUENCE ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ RelationRelationId ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ TSConfigRelationId ; 
 scalar_t__ TSDictionaryRelationId ; 
 scalar_t__ TSParserRelationId ; 
 scalar_t__ TSTemplateRelationId ; 
 int /*<<< orphan*/  TYPEOID ; 
 scalar_t__ TransformRelationId ; 
 scalar_t__ TypeRelationId ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC18(Oid objoid, Oid classoid)
{
	/*
	 * pg_class / pg_attribute
	 *
	 * If this is a relation then we need to see if there are any sub-objects
	 * (eg: columns) for it and, if so, be sure to call
	 * recordExtensionInitPrivWorker() for each one.
	 */
	if (classoid == RelationRelationId)
	{
		Form_pg_class pg_class_tuple;
		Datum		aclDatum;
		bool		isNull;
		HeapTuple	tuple;

		tuple = FUNC8(RELOID, FUNC4(objoid));
		if (!FUNC2(tuple))
			FUNC11(ERROR, "cache lookup failed for relation %u", objoid);
		pg_class_tuple = (Form_pg_class) FUNC1(tuple);

		/* Indexes don't have permissions */
		if (pg_class_tuple->relkind == RELKIND_INDEX ||
			pg_class_tuple->relkind == RELKIND_PARTITIONED_INDEX)
			return;

		/* Composite types don't have permissions either */
		if (pg_class_tuple->relkind == RELKIND_COMPOSITE_TYPE)
			return;

		/*
		 * If this isn't a sequence, index, or composite type then it's
		 * possibly going to have columns associated with it that might have
		 * ACLs.
		 */
		if (pg_class_tuple->relkind != RELKIND_SEQUENCE)
		{
			AttrNumber	curr_att;
			AttrNumber	nattrs = pg_class_tuple->relnatts;

			for (curr_att = 1; curr_att <= nattrs; curr_att++)
			{
				HeapTuple	attTuple;
				Datum		attaclDatum;

				attTuple = FUNC9(ATTNUM,
										   FUNC4(objoid),
										   FUNC3(curr_att));

				if (!FUNC2(attTuple))
					continue;

				/* ignore dropped columns */
				if (((Form_pg_attribute) FUNC1(attTuple))->attisdropped)
				{
					FUNC6(attTuple);
					continue;
				}

				attaclDatum = FUNC10(ATTNUM, attTuple,
											  Anum_pg_attribute_attacl,
											  &isNull);

				/* no need to do anything for a NULL ACL */
				if (isNull)
				{
					FUNC6(attTuple);
					continue;
				}

				FUNC13(objoid, classoid, curr_att,
											  FUNC0(attaclDatum));

				FUNC6(attTuple);
			}
		}

		aclDatum = FUNC10(RELOID, tuple, Anum_pg_class_relacl,
								   &isNull);

		/* Add the record, if any, for the top-level object */
		if (!isNull)
			FUNC13(objoid, classoid, 0,
										  FUNC0(aclDatum));

		FUNC6(tuple);
	}
	/* pg_foreign_data_wrapper */
	else if (classoid == ForeignDataWrapperRelationId)
	{
		Datum		aclDatum;
		bool		isNull;
		HeapTuple	tuple;

		tuple = FUNC8(FOREIGNDATAWRAPPEROID,
								FUNC4(objoid));
		if (!FUNC2(tuple))
			FUNC11(ERROR, "cache lookup failed for foreign data wrapper %u",
				 objoid);

		aclDatum = FUNC10(FOREIGNDATAWRAPPEROID, tuple,
								   Anum_pg_foreign_data_wrapper_fdwacl,
								   &isNull);

		/* Add the record, if any, for the top-level object */
		if (!isNull)
			FUNC13(objoid, classoid, 0,
										  FUNC0(aclDatum));

		FUNC6(tuple);
	}
	/* pg_foreign_server */
	else if (classoid == ForeignServerRelationId)
	{
		Datum		aclDatum;
		bool		isNull;
		HeapTuple	tuple;

		tuple = FUNC8(FOREIGNSERVEROID, FUNC4(objoid));
		if (!FUNC2(tuple))
			FUNC11(ERROR, "cache lookup failed for foreign data wrapper %u",
				 objoid);

		aclDatum = FUNC10(FOREIGNSERVEROID, tuple,
								   Anum_pg_foreign_server_srvacl,
								   &isNull);

		/* Add the record, if any, for the top-level object */
		if (!isNull)
			FUNC13(objoid, classoid, 0,
										  FUNC0(aclDatum));

		FUNC6(tuple);
	}
	/* pg_language */
	else if (classoid == LanguageRelationId)
	{
		Datum		aclDatum;
		bool		isNull;
		HeapTuple	tuple;

		tuple = FUNC8(LANGOID, FUNC4(objoid));
		if (!FUNC2(tuple))
			FUNC11(ERROR, "cache lookup failed for language %u", objoid);

		aclDatum = FUNC10(LANGOID, tuple, Anum_pg_language_lanacl,
								   &isNull);

		/* Add the record, if any, for the top-level object */
		if (!isNull)
			FUNC13(objoid, classoid, 0,
										  FUNC0(aclDatum));

		FUNC6(tuple);
	}
	/* pg_largeobject_metadata */
	else if (classoid == LargeObjectMetadataRelationId)
	{
		Datum		aclDatum;
		bool		isNull;
		HeapTuple	tuple;
		ScanKeyData entry[1];
		SysScanDesc scan;
		Relation	relation;

		relation = FUNC17(LargeObjectMetadataRelationId, RowExclusiveLock);

		/* There's no syscache for pg_largeobject_metadata */
		FUNC7(&entry[0],
					Anum_pg_largeobject_metadata_oid,
					BTEqualStrategyNumber, F_OIDEQ,
					FUNC4(objoid));

		scan = FUNC14(relation,
								  LargeObjectMetadataOidIndexId, true,
								  NULL, 1, entry);

		tuple = FUNC16(scan);
		if (!FUNC2(tuple))
			FUNC11(ERROR, "could not find tuple for large object %u", objoid);

		aclDatum = FUNC12(tuple,
								Anum_pg_largeobject_metadata_lomacl,
								FUNC5(relation), &isNull);

		/* Add the record, if any, for the top-level object */
		if (!isNull)
			FUNC13(objoid, classoid, 0,
										  FUNC0(aclDatum));

		FUNC15(scan);
	}
	/* pg_namespace */
	else if (classoid == NamespaceRelationId)
	{
		Datum		aclDatum;
		bool		isNull;
		HeapTuple	tuple;

		tuple = FUNC8(NAMESPACEOID, FUNC4(objoid));
		if (!FUNC2(tuple))
			FUNC11(ERROR, "cache lookup failed for function %u", objoid);

		aclDatum = FUNC10(NAMESPACEOID, tuple,
								   Anum_pg_namespace_nspacl, &isNull);

		/* Add the record, if any, for the top-level object */
		if (!isNull)
			FUNC13(objoid, classoid, 0,
										  FUNC0(aclDatum));

		FUNC6(tuple);
	}
	/* pg_proc */
	else if (classoid == ProcedureRelationId)
	{
		Datum		aclDatum;
		bool		isNull;
		HeapTuple	tuple;

		tuple = FUNC8(PROCOID, FUNC4(objoid));
		if (!FUNC2(tuple))
			FUNC11(ERROR, "cache lookup failed for function %u", objoid);

		aclDatum = FUNC10(PROCOID, tuple, Anum_pg_proc_proacl,
								   &isNull);

		/* Add the record, if any, for the top-level object */
		if (!isNull)
			FUNC13(objoid, classoid, 0,
										  FUNC0(aclDatum));

		FUNC6(tuple);
	}
	/* pg_type */
	else if (classoid == TypeRelationId)
	{
		Datum		aclDatum;
		bool		isNull;
		HeapTuple	tuple;

		tuple = FUNC8(TYPEOID, FUNC4(objoid));
		if (!FUNC2(tuple))
			FUNC11(ERROR, "cache lookup failed for function %u", objoid);

		aclDatum = FUNC10(TYPEOID, tuple, Anum_pg_type_typacl,
								   &isNull);

		/* Add the record, if any, for the top-level object */
		if (!isNull)
			FUNC13(objoid, classoid, 0,
										  FUNC0(aclDatum));

		FUNC6(tuple);
	}
	else if (classoid == AccessMethodRelationId ||
			 classoid == AggregateRelationId ||
			 classoid == CastRelationId ||
			 classoid == CollationRelationId ||
			 classoid == ConversionRelationId ||
			 classoid == EventTriggerRelationId ||
			 classoid == OperatorRelationId ||
			 classoid == OperatorClassRelationId ||
			 classoid == OperatorFamilyRelationId ||
			 classoid == NamespaceRelationId ||
			 classoid == TSConfigRelationId ||
			 classoid == TSDictionaryRelationId ||
			 classoid == TSParserRelationId ||
			 classoid == TSTemplateRelationId ||
			 classoid == TransformRelationId
		)
	{
		/* no ACL for these object types, so do nothing. */
	}

	/*
	 * complain if we are given a class OID for a class that extensions don't
	 * support or that we don't recognize.
	 */
	else
	{
		FUNC11(ERROR, "unrecognized or unsupported class OID: %u", classoid);
	}
}