#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__* values; } ;
typedef  TYPE_2__ oidvector ;
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_17__ {int* values; } ;
typedef  TYPE_3__ int2vector ;
typedef  int int16 ;
struct TYPE_22__ {int /*<<< orphan*/  amname; int /*<<< orphan*/  amhandler; } ;
struct TYPE_21__ {scalar_t__ relam; scalar_t__ relkind; int /*<<< orphan*/  relname; } ;
struct TYPE_15__ {scalar_t__* values; } ;
struct TYPE_20__ {scalar_t__ indrelid; scalar_t__ indexrelid; int indnatts; int indnkeyatts; TYPE_1__ indkey; scalar_t__ indisunique; } ;
struct TYPE_19__ {scalar_t__ amcanorder; } ;
struct TYPE_18__ {char* data; } ;
typedef  TYPE_4__ StringInfoData ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  ListCell ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_5__ IndexAmRoutine ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_6__* Form_pg_index ;
typedef  TYPE_7__* Form_pg_class ;
typedef  TYPE_8__* Form_pg_am ;
typedef  int /*<<< orphan*/  Datum ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  AMOID ; 
 int /*<<< orphan*/  Anum_pg_index_indclass ; 
 int /*<<< orphan*/  Anum_pg_index_indcollation ; 
 int /*<<< orphan*/  Anum_pg_index_indexprs ; 
 int /*<<< orphan*/  Anum_pg_index_indoption ; 
 int /*<<< orphan*/  Anum_pg_index_indpred ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INDEXRELID ; 
 int INDOPTION_DESC ; 
 int INDOPTION_NULLS_FIRST ; 
 int /*<<< orphan*/ * NIL ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int PRETTYFLAG_SCHEMA ; 
 scalar_t__ RELKIND_PARTITIONED_INDEX ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,char) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 char* FUNC20 (scalar_t__) ; 
 char* FUNC21 (scalar_t__) ; 
 char* FUNC22 (scalar_t__ const,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,int /*<<< orphan*/ *) ; 
 char* FUNC25 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__,scalar_t__,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__,scalar_t__,TYPE_4__*) ; 
 scalar_t__ FUNC28 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (scalar_t__) ; 
 char* FUNC30 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_4__*) ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC35 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC36 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (char*) ; 
 char* FUNC38 (char*) ; 
 scalar_t__ FUNC39 (char*) ; 

__attribute__((used)) static char *
FUNC40(Oid indexrelid, int colno,
					   const Oid *excludeOps,
					   bool attrsOnly, bool keysOnly,
					   bool showTblSpc, bool inherits,
					   int prettyFlags, bool missing_ok)
{
	/* might want a separate isConstraint parameter later */
	bool		isConstraint = (excludeOps != NULL);
	HeapTuple	ht_idx;
	HeapTuple	ht_idxrel;
	HeapTuple	ht_am;
	Form_pg_index idxrec;
	Form_pg_class idxrelrec;
	Form_pg_am	amrec;
	IndexAmRoutine *amroutine;
	List	   *indexprs;
	ListCell   *indexpr_item;
	List	   *context;
	Oid			indrelid;
	int			keyno;
	Datum		indcollDatum;
	Datum		indclassDatum;
	Datum		indoptionDatum;
	bool		isnull;
	oidvector  *indcollation;
	oidvector  *indclass;
	int2vector *indoption;
	StringInfoData buf;
	char	   *str;
	char	   *sep;

	/*
	 * Fetch the pg_index tuple by the Oid of the index
	 */
	ht_idx = FUNC9(INDEXRELID, FUNC6(indexrelid));
	if (!FUNC4(ht_idx))
	{
		if (missing_ok)
			return NULL;
		FUNC17(ERROR, "cache lookup failed for index %u", indexrelid);
	}
	idxrec = (Form_pg_index) FUNC2(ht_idx);

	indrelid = idxrec->indrelid;
	FUNC0(indexrelid == idxrec->indexrelid);

	/* Must get indcollation, indclass, and indoption the hard way */
	indcollDatum = FUNC10(INDEXRELID, ht_idx,
								   Anum_pg_index_indcollation, &isnull);
	FUNC0(!isnull);
	indcollation = (oidvector *) FUNC1(indcollDatum);

	indclassDatum = FUNC10(INDEXRELID, ht_idx,
									Anum_pg_index_indclass, &isnull);
	FUNC0(!isnull);
	indclass = (oidvector *) FUNC1(indclassDatum);

	indoptionDatum = FUNC10(INDEXRELID, ht_idx,
									 Anum_pg_index_indoption, &isnull);
	FUNC0(!isnull);
	indoption = (int2vector *) FUNC1(indoptionDatum);

	/*
	 * Fetch the pg_class tuple of the index relation
	 */
	ht_idxrel = FUNC9(RELOID, FUNC6(indexrelid));
	if (!FUNC4(ht_idxrel))
		FUNC17(ERROR, "cache lookup failed for relation %u", indexrelid);
	idxrelrec = (Form_pg_class) FUNC2(ht_idxrel);

	/*
	 * Fetch the pg_am tuple of the index' access method
	 */
	ht_am = FUNC9(AMOID, FUNC6(idxrelrec->relam));
	if (!FUNC4(ht_am))
		FUNC17(ERROR, "cache lookup failed for access method %u",
			 idxrelrec->relam);
	amrec = (Form_pg_am) FUNC2(ht_am);

	/* Fetch the index AM's API struct */
	amroutine = FUNC3(amrec->amhandler);

	/*
	 * Get the index expressions, if any.  (NOTE: we do not use the relcache
	 * versions of the expressions and predicate, because we want to display
	 * non-const-folded expressions.)
	 */
	if (!FUNC31(ht_idx, Anum_pg_index_indexprs, NULL))
	{
		Datum		exprsDatum;
		bool		isnull;
		char	   *exprsString;

		exprsDatum = FUNC10(INDEXRELID, ht_idx,
									 Anum_pg_index_indexprs, &isnull);
		FUNC0(!isnull);
		exprsString = FUNC11(exprsDatum);
		indexprs = (List *) FUNC39(exprsString);
		FUNC37(exprsString);
	}
	else
		indexprs = NIL;

	indexpr_item = FUNC34(indexprs);

	context = FUNC15(FUNC29(indrelid), indrelid);

	/*
	 * Start the index definition.  Note that the index's name should never be
	 * schema-qualified, but the indexed rel's name may be.
	 */
	FUNC32(&buf);

	if (!attrsOnly)
	{
		if (!isConstraint)
			FUNC12(&buf, "CREATE %sINDEX %s ON %s%s USING %s (",
							 idxrec->indisunique ? "UNIQUE " : "",
							 FUNC38(FUNC5(idxrelrec->relname)),
							 idxrelrec->relkind == RELKIND_PARTITIONED_INDEX
							 && !inherits ? "ONLY " : "",
							 (prettyFlags & PRETTYFLAG_SCHEMA) ?
							 FUNC24(indrelid, NIL) :
							 FUNC23(indrelid),
							 FUNC38(FUNC5(amrec->amname)));
		else					/* currently, must be EXCLUDE constraint */
			FUNC12(&buf, "EXCLUDE USING %s (",
							 FUNC38(FUNC5(amrec->amname)));
	}

	/*
	 * Report the indexed attributes
	 */
	sep = "";
	for (keyno = 0; keyno < idxrec->indnatts; keyno++)
	{
		AttrNumber	attnum = idxrec->indkey.values[keyno];
		Oid			keycoltype;
		Oid			keycolcollation;

		/*
		 * Ignore non-key attributes if told to.
		 */
		if (keysOnly && keyno >= idxrec->indnkeyatts)
			break;

		/* Otherwise, print INCLUDE to divide key and non-key attrs. */
		if (!colno && keyno == idxrec->indnkeyatts)
		{
			FUNC14(&buf, ") INCLUDE (");
			sep = "";
		}

		if (!colno)
			FUNC14(&buf, sep);
		sep = ", ";

		if (attnum != 0)
		{
			/* Simple index column */
			char	   *attname;
			int32		keycoltypmod;

			attname = FUNC25(indrelid, attnum, false);
			if (!colno || colno == keyno + 1)
				FUNC14(&buf, FUNC38(attname));
			FUNC26(indrelid, attnum,
								  &keycoltype, &keycoltypmod,
								  &keycolcollation);
		}
		else
		{
			/* expressional index */
			Node	   *indexkey;

			if (indexpr_item == NULL)
				FUNC17(ERROR, "too few entries in indexprs list");
			indexkey = (Node *) FUNC33(indexpr_item);
			indexpr_item = FUNC35(indexprs, indexpr_item);
			/* Deparse */
			str = FUNC16(indexkey, context, false, false,
											prettyFlags, 0);
			if (!colno || colno == keyno + 1)
			{
				/* Need parens if it's not a bare function call */
				if (FUNC36(indexkey))
					FUNC14(&buf, str);
				else
					FUNC12(&buf, "(%s)", str);
			}
			keycoltype = FUNC19(indexkey);
			keycolcollation = FUNC18(indexkey);
		}

		/* Print additional decoration for (selected) key columns */
		if (!attrsOnly && keyno < idxrec->indnkeyatts &&
			(!colno || colno == keyno + 1))
		{
			int16		opt = indoption->values[keyno];
			Oid			indcoll = indcollation->values[keyno];

			/* Add collation, if not default for column */
			if (FUNC7(indcoll) && indcoll != keycolcollation)
				FUNC12(&buf, " COLLATE %s",
								 FUNC21((indcoll)));

			/* Add the operator class name, if not default */
			FUNC27(indclass->values[keyno], keycoltype, &buf);

			/* Add options if relevant */
			if (amroutine->amcanorder)
			{
				/* if it supports sort ordering, report DESC and NULLS opts */
				if (opt & INDOPTION_DESC)
				{
					FUNC14(&buf, " DESC");
					/* NULLS FIRST is the default in this case */
					if (!(opt & INDOPTION_NULLS_FIRST))
						FUNC14(&buf, " NULLS LAST");
				}
				else
				{
					if (opt & INDOPTION_NULLS_FIRST)
						FUNC14(&buf, " NULLS FIRST");
				}
			}

			/* Add the exclusion operator if relevant */
			if (excludeOps != NULL)
				FUNC12(&buf, " WITH %s",
								 FUNC22(excludeOps[keyno],
														keycoltype,
														keycoltype));
		}
	}

	if (!attrsOnly)
	{
		FUNC13(&buf, ')');

		/*
		 * If it has options, append "WITH (options)"
		 */
		str = FUNC20(indexrelid);
		if (str)
		{
			FUNC12(&buf, " WITH (%s)", str);
			FUNC37(str);
		}

		/*
		 * Print tablespace, but only if requested
		 */
		if (showTblSpc)
		{
			Oid			tblspc;

			tblspc = FUNC28(indexrelid);
			if (FUNC7(tblspc))
			{
				if (isConstraint)
					FUNC14(&buf, " USING INDEX");
				FUNC12(&buf, " TABLESPACE %s",
								 FUNC38(FUNC30(tblspc)));
			}
		}

		/*
		 * If it's a partial index, decompile and append the predicate
		 */
		if (!FUNC31(ht_idx, Anum_pg_index_indpred, NULL))
		{
			Node	   *node;
			Datum		predDatum;
			bool		isnull;
			char	   *predString;

			/* Convert text string to node tree */
			predDatum = FUNC10(INDEXRELID, ht_idx,
										Anum_pg_index_indpred, &isnull);
			FUNC0(!isnull);
			predString = FUNC11(predDatum);
			node = (Node *) FUNC39(predString);
			FUNC37(predString);

			/* Deparse */
			str = FUNC16(node, context, false, false,
											prettyFlags, 0);
			if (isConstraint)
				FUNC12(&buf, " WHERE (%s)", str);
			else
				FUNC12(&buf, " WHERE %s", str);
		}
	}

	/* Clean up */
	FUNC8(ht_idx);
	FUNC8(ht_idxrel);
	FUNC8(ht_am);

	return buf.data;
}