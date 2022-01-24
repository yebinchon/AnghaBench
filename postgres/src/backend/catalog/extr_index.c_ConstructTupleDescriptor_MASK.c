#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_18__ {int relnatts; } ;
struct TYPE_17__ {int atttypid; int atttypmod; int /*<<< orphan*/  attalign; int /*<<< orphan*/  attstorage; int /*<<< orphan*/  attbyval; int /*<<< orphan*/  attndims; int /*<<< orphan*/  attlen; int /*<<< orphan*/  attname; } ;
struct TYPE_16__ {int attnum; int attstattarget; int attcacheoff; int attislocal; int attcollation; int atttypid; int atttypmod; int attrelid; int /*<<< orphan*/  attstorage; int /*<<< orphan*/  attalign; int /*<<< orphan*/  attbyval; int /*<<< orphan*/  attlen; int /*<<< orphan*/  attname; int /*<<< orphan*/  attndims; } ;
struct TYPE_15__ {int opckeytype; scalar_t__ opcintype; } ;
struct TYPE_14__ {int /*<<< orphan*/  typstorage; int /*<<< orphan*/  typalign; int /*<<< orphan*/  typbyval; int /*<<< orphan*/  typlen; } ;
struct TYPE_13__ {int amkeytype; } ;
struct TYPE_12__ {int ii_NumIndexAttrs; int ii_NumIndexKeyAttrs; int* ii_IndexAttrNumbers; int /*<<< orphan*/ * ii_Expressions; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  ListCell ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ IndexInfo ;
typedef  TYPE_2__ IndexAmRoutine ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_type ;
typedef  TYPE_4__* Form_pg_opclass ;
typedef  TYPE_5__* Form_pg_attribute ;
typedef  TYPE_6__ FormData_pg_attribute ;
typedef  int AttrNumber ;

/* Variables and functions */
 scalar_t__ ANYARRAYOID ; 
 int ANYELEMENTOID ; 
 int /*<<< orphan*/  ATTRIBUTE_FIXED_PART_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  CLAOID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int InvalidOid ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPEOID ; 
 void* FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*) ; 

__attribute__((used)) static TupleDesc
FUNC26(Relation heapRelation,
						 IndexInfo *indexInfo,
						 List *indexColNames,
						 Oid accessMethodObjectId,
						 Oid *collationObjectId,
						 Oid *classObjectId)
{
	int			numatts = indexInfo->ii_NumIndexAttrs;
	int			numkeyatts = indexInfo->ii_NumIndexKeyAttrs;
	ListCell   *colnames_item = FUNC21(indexColNames);
	ListCell   *indexpr_item = FUNC21(indexInfo->ii_Expressions);
	IndexAmRoutine *amroutine;
	TupleDesc	heapTupDesc;
	TupleDesc	indexTupDesc;
	int			natts;			/* #atts in heap rel --- for error checks */
	int			i;

	/* We need access to the index AM's API struct */
	amroutine = FUNC5(accessMethodObjectId, false);

	/* ... and to the table's tuple descriptor */
	heapTupDesc = FUNC11(heapRelation);
	natts = FUNC12(heapRelation)->relnatts;

	/*
	 * allocate the new tuple descriptor
	 */
	indexTupDesc = FUNC3(numatts);

	/*
	 * Fill in the pg_attribute row.
	 */
	for (i = 0; i < numatts; i++)
	{
		AttrNumber	atnum = indexInfo->ii_IndexAttrNumbers[i];
		Form_pg_attribute to = FUNC15(indexTupDesc, i);
		HeapTuple	tuple;
		Form_pg_type typeTup;
		Form_pg_opclass opclassTup;
		Oid			keyType;

		FUNC7(to, 0, ATTRIBUTE_FIXED_PART_SIZE);
		to->attnum = i + 1;
		to->attstattarget = -1;
		to->attcacheoff = -1;
		to->attislocal = true;
		to->attcollation = (i < numkeyatts) ?
			collationObjectId[i] : InvalidOid;

		/*
		 * For simple index columns, we copy some pg_attribute fields from the
		 * parent relation.  For expressions we have to look at the expression
		 * result.
		 */
		if (atnum != 0)
		{
			/* Simple index column */
			const FormData_pg_attribute *from;

			FUNC0(atnum > 0);	/* should've been caught above */

			if (atnum > natts)	/* safety check */
				FUNC16(ERROR, "invalid column number %d", atnum);
			from = FUNC15(heapTupDesc,
								 FUNC1(atnum));

			FUNC23(&to->attname, &from->attname);
			to->atttypid = from->atttypid;
			to->attlen = from->attlen;
			to->attndims = from->attndims;
			to->atttypmod = from->atttypmod;
			to->attbyval = from->attbyval;
			to->attstorage = from->attstorage;
			to->attalign = from->attalign;
		}
		else
		{
			/* Expressional index */
			Node	   *indexkey;

			if (indexpr_item == NULL)	/* shouldn't happen */
				FUNC16(ERROR, "too few entries in indexprs list");
			indexkey = (Node *) FUNC20(indexpr_item);
			indexpr_item = FUNC22(indexInfo->ii_Expressions, indexpr_item);

			/*
			 * Lookup the expression type in pg_type for the type length etc.
			 */
			keyType = FUNC17(indexkey);
			tuple = FUNC14(TYPEOID, FUNC9(keyType));
			if (!FUNC6(tuple))
				FUNC16(ERROR, "cache lookup failed for type %u", keyType);
			typeTup = (Form_pg_type) FUNC4(tuple);

			/*
			 * Assign some of the attributes values. Leave the rest.
			 */
			to->atttypid = keyType;
			to->attlen = typeTup->typlen;
			to->attbyval = typeTup->typbyval;
			to->attstorage = typeTup->typstorage;
			to->attalign = typeTup->typalign;
			to->atttypmod = FUNC18(indexkey);

			FUNC13(tuple);

			/*
			 * Make sure the expression yields a type that's safe to store in
			 * an index.  We need this defense because we have index opclasses
			 * for pseudo-types such as "record", and the actually stored type
			 * had better be safe; eg, a named composite type is okay, an
			 * anonymous record type is not.  The test is the same as for
			 * whether a table column is of a safe type (which is why we
			 * needn't check for the non-expression case).
			 */
			FUNC2(FUNC8(to->attname),
							   to->atttypid, to->attcollation,
							   NIL, 0);
		}

		/*
		 * We do not yet have the correct relation OID for the index, so just
		 * set it invalid for now.  InitializeAttributeOids() will fix it
		 * later.
		 */
		to->attrelid = InvalidOid;

		/*
		 * Set the attribute name as specified by caller.
		 */
		if (colnames_item == NULL)	/* shouldn't happen */
			FUNC16(ERROR, "too few entries in colnames list");
		FUNC24(&to->attname, (const char *) FUNC20(colnames_item));
		colnames_item = FUNC22(indexColNames, colnames_item);

		/*
		 * Check the opclass and index AM to see if either provides a keytype
		 * (overriding the attribute type).  Opclass (if exists) takes
		 * precedence.
		 */
		keyType = amroutine->amkeytype;

		/*
		 * Code below is concerned to the opclasses which are not used with
		 * the included columns.
		 */
		if (i < indexInfo->ii_NumIndexKeyAttrs)
		{
			tuple = FUNC14(CLAOID, FUNC9(classObjectId[i]));
			if (!FUNC6(tuple))
				FUNC16(ERROR, "cache lookup failed for opclass %u",
					 classObjectId[i]);
			opclassTup = (Form_pg_opclass) FUNC4(tuple);
			if (FUNC10(opclassTup->opckeytype))
				keyType = opclassTup->opckeytype;

			/*
			 * If keytype is specified as ANYELEMENT, and opcintype is
			 * ANYARRAY, then the attribute type must be an array (else it'd
			 * not have matched this opclass); use its element type.
			 */
			if (keyType == ANYELEMENTOID && opclassTup->opcintype == ANYARRAYOID)
			{
				keyType = FUNC19(to->atttypid);
				if (!FUNC10(keyType))
					FUNC16(ERROR, "could not get element type of array type %u",
						 to->atttypid);
			}

			FUNC13(tuple);
		}

		/*
		 * If a key type different from the heap value is specified, update
		 * the type-related fields in the index tupdesc.
		 */
		if (FUNC10(keyType) && keyType != to->atttypid)
		{
			tuple = FUNC14(TYPEOID, FUNC9(keyType));
			if (!FUNC6(tuple))
				FUNC16(ERROR, "cache lookup failed for type %u", keyType);
			typeTup = (Form_pg_type) FUNC4(tuple);

			to->atttypid = keyType;
			to->atttypmod = -1;
			to->attlen = typeTup->typlen;
			to->attbyval = typeTup->typbyval;
			to->attalign = typeTup->typalign;
			to->attstorage = typeTup->typstorage;

			FUNC13(tuple);
		}
	}

	FUNC25(amroutine);

	return indexTupDesc;
}