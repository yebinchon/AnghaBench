#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16 ;
struct TYPE_17__ {int /*<<< orphan*/  values; } ;
typedef  TYPE_3__ oidvector ;
struct TYPE_18__ {int /*<<< orphan*/  values; } ;
typedef  TYPE_4__ int2vector ;
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_20__ {int /*<<< orphan*/  amhandler; } ;
struct TYPE_19__ {int /*<<< orphan*/ * rd_amcache; int /*<<< orphan*/ * rd_exclstrats; int /*<<< orphan*/ * rd_exclprocs; int /*<<< orphan*/ * rd_exclops; void* rd_indpred; void* rd_indexprs; int /*<<< orphan*/ * rd_indoption; int /*<<< orphan*/  rd_indextuple; int /*<<< orphan*/ * rd_opcintype; int /*<<< orphan*/ * rd_opfamily; int /*<<< orphan*/ * rd_support; int /*<<< orphan*/ * rd_indcollation; int /*<<< orphan*/ * rd_supportinfo; TYPE_2__* rd_indam; int /*<<< orphan*/  rd_indexcxt; int /*<<< orphan*/  rd_amhandler; TYPE_1__* rd_rel; scalar_t__ rd_index; } ;
struct TYPE_16__ {int amsupport; } ;
struct TYPE_15__ {int /*<<< orphan*/  relam; } ;
typedef  TYPE_5__* Relation ;
typedef  int /*<<< orphan*/  RegProcedure ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  scalar_t__ Form_pg_index ;
typedef  TYPE_6__* Form_pg_am ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_SMALL_SIZES ; 
 int /*<<< orphan*/  AMOID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Anum_pg_index_indclass ; 
 int /*<<< orphan*/  Anum_pg_index_indcollation ; 
 int /*<<< orphan*/  Anum_pg_index_indoption ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INDEXRELID ; 
 int FUNC6 (TYPE_5__*) ; 
 int FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 void* NIL ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void
FUNC23(Relation relation)
{
	HeapTuple	tuple;
	Form_pg_am	aform;
	Datum		indcollDatum;
	Datum		indclassDatum;
	Datum		indoptionDatum;
	bool		isnull;
	oidvector  *indcoll;
	oidvector  *indclass;
	int2vector *indoption;
	MemoryContext indexcxt;
	MemoryContext oldcontext;
	int			indnatts;
	int			indnkeyatts;
	uint16		amsupport;

	/*
	 * Make a copy of the pg_index entry for the index.  Since pg_index
	 * contains variable-length and possibly-null fields, we have to do this
	 * honestly rather than just treating it as a Form_pg_index struct.
	 */
	tuple = FUNC18(INDEXRELID,
							FUNC13(FUNC16(relation)));
	if (!FUNC5(tuple))
		FUNC19(ERROR, "cache lookup failed for index %u",
			 FUNC16(relation));
	oldcontext = FUNC12(CacheMemoryContext);
	relation->rd_indextuple = FUNC21(tuple);
	relation->rd_index = (Form_pg_index) FUNC3(relation->rd_indextuple);
	FUNC12(oldcontext);
	FUNC17(tuple);

	/*
	 * Look up the index's access method, save the OID of its handler function
	 */
	tuple = FUNC18(AMOID, FUNC13(relation->rd_rel->relam));
	if (!FUNC5(tuple))
		FUNC19(ERROR, "cache lookup failed for access method %u",
			 relation->rd_rel->relam);
	aform = (Form_pg_am) FUNC3(tuple);
	relation->rd_amhandler = aform->amhandler;
	FUNC17(tuple);

	indnatts = FUNC14(relation);
	if (indnatts != FUNC6(relation))
		FUNC19(ERROR, "relnatts disagrees with indnatts for index %u",
			 FUNC16(relation));
	indnkeyatts = FUNC7(relation);

	/*
	 * Make the private context to hold index access info.  The reason we need
	 * a context, and not just a couple of pallocs, is so that we won't leak
	 * any subsidiary info attached to fmgr lookup records.
	 */
	indexcxt = FUNC0(CacheMemoryContext,
									 "index info",
									 ALLOCSET_SMALL_SIZES);
	relation->rd_indexcxt = indexcxt;
	FUNC11(indexcxt,
									  FUNC15(relation));

	/*
	 * Now we can fetch the index AM's API struct
	 */
	FUNC9(relation);

	/*
	 * Allocate arrays to hold data. Opclasses are not used for included
	 * columns, so allocate them for indnkeyatts only.
	 */
	relation->rd_opfamily = (Oid *)
		FUNC10(indexcxt, indnkeyatts * sizeof(Oid));
	relation->rd_opcintype = (Oid *)
		FUNC10(indexcxt, indnkeyatts * sizeof(Oid));

	amsupport = relation->rd_indam->amsupport;
	if (amsupport > 0)
	{
		int			nsupport = indnatts * amsupport;

		relation->rd_support = (RegProcedure *)
			FUNC10(indexcxt, nsupport * sizeof(RegProcedure));
		relation->rd_supportinfo = (FmgrInfo *)
			FUNC10(indexcxt, nsupport * sizeof(FmgrInfo));
	}
	else
	{
		relation->rd_support = NULL;
		relation->rd_supportinfo = NULL;
	}

	relation->rd_indcollation = (Oid *)
		FUNC10(indexcxt, indnkeyatts * sizeof(Oid));

	relation->rd_indoption = (int16 *)
		FUNC10(indexcxt, indnkeyatts * sizeof(int16));

	/*
	 * indcollation cannot be referenced directly through the C struct,
	 * because it comes after the variable-width indkey field.  Must extract
	 * the datum the hard way...
	 */
	indcollDatum = FUNC20(relation->rd_indextuple,
							   Anum_pg_index_indcollation,
							   FUNC4(),
							   &isnull);
	FUNC1(!isnull);
	indcoll = (oidvector *) FUNC2(indcollDatum);
	FUNC22(relation->rd_indcollation, indcoll->values, indnkeyatts * sizeof(Oid));

	/*
	 * indclass cannot be referenced directly through the C struct, because it
	 * comes after the variable-width indkey field.  Must extract the datum
	 * the hard way...
	 */
	indclassDatum = FUNC20(relation->rd_indextuple,
								Anum_pg_index_indclass,
								FUNC4(),
								&isnull);
	FUNC1(!isnull);
	indclass = (oidvector *) FUNC2(indclassDatum);

	/*
	 * Fill the support procedure OID array, as well as the info about
	 * opfamilies and opclass input types.  (aminfo and supportinfo are left
	 * as zeroes, and are filled on-the-fly when used)
	 */
	FUNC8(indclass, relation->rd_support,
						   relation->rd_opfamily, relation->rd_opcintype,
						   amsupport, indnkeyatts);

	/*
	 * Similarly extract indoption and copy it to the cache entry
	 */
	indoptionDatum = FUNC20(relation->rd_indextuple,
								 Anum_pg_index_indoption,
								 FUNC4(),
								 &isnull);
	FUNC1(!isnull);
	indoption = (int2vector *) FUNC2(indoptionDatum);
	FUNC22(relation->rd_indoption, indoption->values, indnkeyatts * sizeof(int16));

	/*
	 * expressions, predicate, exclusion caches will be filled later
	 */
	relation->rd_indexprs = NIL;
	relation->rd_indpred = NIL;
	relation->rd_exclops = NULL;
	relation->rd_exclprocs = NULL;
	relation->rd_exclstrats = NULL;
	relation->rd_amcache = NULL;
}