#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ctl ;
struct TYPE_20__ {scalar_t__ fn_oid; } ;
struct TYPE_21__ {int keysize; int entrysize; scalar_t__ typtype; int flags; scalar_t__ btree_opf; scalar_t__ btree_opintype; scalar_t__ hash_opf; scalar_t__ hash_opintype; scalar_t__ eq_opr; scalar_t__ cmp_proc; scalar_t__ hash_proc; scalar_t__ hash_extended_proc; scalar_t__ domainBaseType; int domainBaseTypmod; int /*<<< orphan*/ * rngelemtype; int /*<<< orphan*/ * tupDesc; TYPE_13__ hash_extended_proc_finfo; TYPE_13__ hash_proc_finfo; TYPE_13__ cmp_proc_finfo; TYPE_13__ eq_opr_finfo; scalar_t__ gt_opr; scalar_t__ lt_opr; struct TYPE_21__* nextDomain; int /*<<< orphan*/  typcollation; int /*<<< orphan*/  typelem; int /*<<< orphan*/  typrelid; int /*<<< orphan*/  typstorage; int /*<<< orphan*/  typalign; int /*<<< orphan*/  typbyval; int /*<<< orphan*/  typlen; scalar_t__ type_id; } ;
typedef  TYPE_1__ TypeCacheEntry ;
struct TYPE_22__ {scalar_t__ typtype; int /*<<< orphan*/  typcollation; int /*<<< orphan*/  typelem; int /*<<< orphan*/  typrelid; int /*<<< orphan*/  typstorage; int /*<<< orphan*/  typalign; int /*<<< orphan*/  typbyval; int /*<<< orphan*/  typlen; int /*<<< orphan*/  typname; int /*<<< orphan*/  typisdefined; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__ HASHCTL ;
typedef  TYPE_3__* Form_pg_type ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ ARRAY_EQ_OP ; 
 scalar_t__ ARRAY_GT_OP ; 
 scalar_t__ ARRAY_LT_OP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  BTGreaterStrategyNumber ; 
 int /*<<< orphan*/  BTLessStrategyNumber ; 
 int /*<<< orphan*/  BTORDER_PROC ; 
 int /*<<< orphan*/  BTREE_AM_OID ; 
 int /*<<< orphan*/  CLAOID ; 
 int /*<<< orphan*/  CONSTROID ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ F_BTARRAYCMP ; 
 scalar_t__ F_BTRECORDCMP ; 
 scalar_t__ F_HASH_ARRAY ; 
 scalar_t__ F_HASH_ARRAY_EXTENDED ; 
 scalar_t__ F_HASH_RANGE ; 
 scalar_t__ F_HASH_RANGE_EXTENDED ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HASHEXTENDED_PROC ; 
 int /*<<< orphan*/  HASHSTANDARD_PROC ; 
 int /*<<< orphan*/  HASH_AM_OID ; 
 int HASH_BLOBS ; 
 int HASH_ELEM ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/  HTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ RECORD_EQ_OP ; 
 scalar_t__ RECORD_GT_OP ; 
 scalar_t__ RECORD_LT_OP ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TCFLAGS_CHECKED_BTREE_OPCLASS ; 
 int TCFLAGS_CHECKED_CMP_PROC ; 
 int TCFLAGS_CHECKED_DOMAIN_CONSTRAINTS ; 
 int TCFLAGS_CHECKED_EQ_OPR ; 
 int TCFLAGS_CHECKED_GT_OPR ; 
 int TCFLAGS_CHECKED_HASH_EXTENDED_PROC ; 
 int TCFLAGS_CHECKED_HASH_OPCLASS ; 
 int TCFLAGS_CHECKED_HASH_PROC ; 
 int TCFLAGS_CHECKED_LT_OPR ; 
 int TYPECACHE_BTREE_OPFAMILY ; 
 int TYPECACHE_CMP_PROC ; 
 int TYPECACHE_CMP_PROC_FINFO ; 
 int TYPECACHE_DOMAIN_BASE_INFO ; 
 int TYPECACHE_DOMAIN_CONSTR_INFO ; 
 int TYPECACHE_EQ_OPR ; 
 int TYPECACHE_EQ_OPR_FINFO ; 
 int TYPECACHE_GT_OPR ; 
 int TYPECACHE_HASH_EXTENDED_PROC ; 
 int TYPECACHE_HASH_EXTENDED_PROC_FINFO ; 
 int TYPECACHE_HASH_OPFAMILY ; 
 int TYPECACHE_HASH_PROC ; 
 int TYPECACHE_HASH_PROC_FINFO ; 
 int TYPECACHE_LT_OPR ; 
 int TYPECACHE_RANGE_INFO ; 
 int TYPECACHE_TUPDESC ; 
 int /*<<< orphan*/  TYPEOID ; 
 scalar_t__ TYPTYPE_COMPOSITE ; 
 scalar_t__ TYPTYPE_DOMAIN ; 
 scalar_t__ TYPTYPE_RANGE ; 
 int /*<<< orphan*/  TypeCacheConstrCallback ; 
 int /*<<< orphan*/ * TypeCacheHash ; 
 int /*<<< orphan*/  TypeCacheOpcCallback ; 
 int /*<<< orphan*/  TypeCacheRelCallback ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,scalar_t__) ; 
 TYPE_1__* firstDomainTypeEntry ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,TYPE_13__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (scalar_t__,int*) ; 
 void* FUNC22 (scalar_t__) ; 
 void* FUNC23 (scalar_t__) ; 
 scalar_t__ FUNC24 (scalar_t__) ; 
 scalar_t__ FUNC25 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC27 (char*,int,TYPE_1__*,int) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_1__*) ; 

TypeCacheEntry *
FUNC36(Oid type_id, int flags)
{
	TypeCacheEntry *typentry;
	bool		found;

	if (TypeCacheHash == NULL)
	{
		/* First time through: initialize the hash table */
		HASHCTL		ctl;

		FUNC7(&ctl, 0, sizeof(ctl));
		ctl.keysize = sizeof(Oid);
		ctl.entrysize = sizeof(TypeCacheEntry);
		TypeCacheHash = FUNC27("Type information cache", 64,
									&ctl, HASH_ELEM | HASH_BLOBS);

		/* Also set up callbacks for SI invalidations */
		FUNC1(TypeCacheRelCallback, (Datum) 0);
		FUNC2(CLAOID, TypeCacheOpcCallback, (Datum) 0);
		FUNC2(CONSTROID, TypeCacheConstrCallback, (Datum) 0);
		FUNC2(TYPEOID, TypeCacheConstrCallback, (Datum) 0);

		/* Also make sure CacheMemoryContext exists */
		if (!CacheMemoryContext)
			FUNC3();
	}

	/* Try to look up an existing entry */
	typentry = (TypeCacheEntry *) FUNC28(TypeCacheHash,
											  (void *) &type_id,
											  HASH_FIND, NULL);
	if (typentry == NULL)
	{
		/*
		 * If we didn't find one, we want to make one.  But first look up the
		 * pg_type row, just to make sure we don't make a cache entry for an
		 * invalid type OID.  If the type OID is not valid, present a
		 * user-facing error, since some code paths such as domain_in() allow
		 * this function to be reached with a user-supplied OID.
		 */
		HeapTuple	tp;
		Form_pg_type typtup;

		tp = FUNC12(TYPEOID, FUNC9(type_id));
		if (!FUNC6(tp))
			FUNC17(ERROR,
					(FUNC18(ERRCODE_UNDEFINED_OBJECT),
					 FUNC19("type with OID %u does not exist", type_id)));
		typtup = (Form_pg_type) FUNC4(tp);
		if (!typtup->typisdefined)
			FUNC17(ERROR,
					(FUNC18(ERRCODE_UNDEFINED_OBJECT),
					 FUNC19("type \"%s\" is only a shell",
							FUNC8(typtup->typname))));

		/* Now make the typcache entry */
		typentry = (TypeCacheEntry *) FUNC28(TypeCacheHash,
												  (void *) &type_id,
												  HASH_ENTER, &found);
		FUNC0(!found);			/* it wasn't there a moment ago */

		FUNC7(typentry, 0, sizeof(TypeCacheEntry));
		typentry->type_id = type_id;
		typentry->typlen = typtup->typlen;
		typentry->typbyval = typtup->typbyval;
		typentry->typalign = typtup->typalign;
		typentry->typstorage = typtup->typstorage;
		typentry->typtype = typtup->typtype;
		typentry->typrelid = typtup->typrelid;
		typentry->typelem = typtup->typelem;
		typentry->typcollation = typtup->typcollation;

		/* If it's a domain, immediately thread it into the domain cache list */
		if (typentry->typtype == TYPTYPE_DOMAIN)
		{
			typentry->nextDomain = firstDomainTypeEntry;
			firstDomainTypeEntry = typentry;
		}

		FUNC11(tp);
	}

	/*
	 * Look up opclasses if we haven't already and any dependent info is
	 * requested.
	 */
	if ((flags & (TYPECACHE_EQ_OPR | TYPECACHE_LT_OPR | TYPECACHE_GT_OPR |
				  TYPECACHE_CMP_PROC |
				  TYPECACHE_EQ_OPR_FINFO | TYPECACHE_CMP_PROC_FINFO |
				  TYPECACHE_BTREE_OPFAMILY)) &&
		!(typentry->flags & TCFLAGS_CHECKED_BTREE_OPCLASS))
	{
		Oid			opclass;

		opclass = FUNC5(type_id, BTREE_AM_OID);
		if (FUNC10(opclass))
		{
			typentry->btree_opf = FUNC22(opclass);
			typentry->btree_opintype = FUNC23(opclass);
		}
		else
		{
			typentry->btree_opf = typentry->btree_opintype = InvalidOid;
		}

		/*
		 * Reset information derived from btree opclass.  Note in particular
		 * that we'll redetermine the eq_opr even if we previously found one;
		 * this matters in case a btree opclass has been added to a type that
		 * previously had only a hash opclass.
		 */
		typentry->flags &= ~(TCFLAGS_CHECKED_EQ_OPR |
							 TCFLAGS_CHECKED_LT_OPR |
							 TCFLAGS_CHECKED_GT_OPR |
							 TCFLAGS_CHECKED_CMP_PROC);
		typentry->flags |= TCFLAGS_CHECKED_BTREE_OPCLASS;
	}

	/*
	 * If we need to look up equality operator, and there's no btree opclass,
	 * force lookup of hash opclass.
	 */
	if ((flags & (TYPECACHE_EQ_OPR | TYPECACHE_EQ_OPR_FINFO)) &&
		!(typentry->flags & TCFLAGS_CHECKED_EQ_OPR) &&
		typentry->btree_opf == InvalidOid)
		flags |= TYPECACHE_HASH_OPFAMILY;

	if ((flags & (TYPECACHE_HASH_PROC | TYPECACHE_HASH_PROC_FINFO |
				  TYPECACHE_HASH_EXTENDED_PROC |
				  TYPECACHE_HASH_EXTENDED_PROC_FINFO |
				  TYPECACHE_HASH_OPFAMILY)) &&
		!(typentry->flags & TCFLAGS_CHECKED_HASH_OPCLASS))
	{
		Oid			opclass;

		opclass = FUNC5(type_id, HASH_AM_OID);
		if (FUNC10(opclass))
		{
			typentry->hash_opf = FUNC22(opclass);
			typentry->hash_opintype = FUNC23(opclass);
		}
		else
		{
			typentry->hash_opf = typentry->hash_opintype = InvalidOid;
		}

		/*
		 * Reset information derived from hash opclass.  We do *not* reset the
		 * eq_opr; if we already found one from the btree opclass, that
		 * decision is still good.
		 */
		typentry->flags &= ~(TCFLAGS_CHECKED_HASH_PROC |
							 TCFLAGS_CHECKED_HASH_EXTENDED_PROC);
		typentry->flags |= TCFLAGS_CHECKED_HASH_OPCLASS;
	}

	/*
	 * Look for requested operators and functions, if we haven't already.
	 */
	if ((flags & (TYPECACHE_EQ_OPR | TYPECACHE_EQ_OPR_FINFO)) &&
		!(typentry->flags & TCFLAGS_CHECKED_EQ_OPR))
	{
		Oid			eq_opr = InvalidOid;

		if (typentry->btree_opf != InvalidOid)
			eq_opr = FUNC25(typentry->btree_opf,
										 typentry->btree_opintype,
										 typentry->btree_opintype,
										 BTEqualStrategyNumber);
		if (eq_opr == InvalidOid &&
			typentry->hash_opf != InvalidOid)
			eq_opr = FUNC25(typentry->hash_opf,
										 typentry->hash_opintype,
										 typentry->hash_opintype,
										 HTEqualStrategyNumber);

		/*
		 * If the proposed equality operator is array_eq or record_eq, check
		 * to see if the element type or column types support equality.  If
		 * not, array_eq or record_eq would fail at runtime, so we don't want
		 * to report that the type has equality.  (We can omit similar
		 * checking for ranges because ranges can't be created in the first
		 * place unless their subtypes support equality.)
		 */
		if (eq_opr == ARRAY_EQ_OP &&
			!FUNC14(typentry))
			eq_opr = InvalidOid;
		else if (eq_opr == RECORD_EQ_OP &&
				 !FUNC35(typentry))
			eq_opr = InvalidOid;

		/* Force update of eq_opr_finfo only if we're changing state */
		if (typentry->eq_opr != eq_opr)
			typentry->eq_opr_finfo.fn_oid = InvalidOid;

		typentry->eq_opr = eq_opr;

		/*
		 * Reset info about hash functions whenever we pick up new info about
		 * equality operator.  This is so we can ensure that the hash
		 * functions match the operator.
		 */
		typentry->flags &= ~(TCFLAGS_CHECKED_HASH_PROC |
							 TCFLAGS_CHECKED_HASH_EXTENDED_PROC);
		typentry->flags |= TCFLAGS_CHECKED_EQ_OPR;
	}
	if ((flags & TYPECACHE_LT_OPR) &&
		!(typentry->flags & TCFLAGS_CHECKED_LT_OPR))
	{
		Oid			lt_opr = InvalidOid;

		if (typentry->btree_opf != InvalidOid)
			lt_opr = FUNC25(typentry->btree_opf,
										 typentry->btree_opintype,
										 typentry->btree_opintype,
										 BTLessStrategyNumber);

		/*
		 * As above, make sure array_cmp or record_cmp will succeed; but again
		 * we need no special check for ranges.
		 */
		if (lt_opr == ARRAY_LT_OP &&
			!FUNC13(typentry))
			lt_opr = InvalidOid;
		else if (lt_opr == RECORD_LT_OP &&
				 !FUNC34(typentry))
			lt_opr = InvalidOid;

		typentry->lt_opr = lt_opr;
		typentry->flags |= TCFLAGS_CHECKED_LT_OPR;
	}
	if ((flags & TYPECACHE_GT_OPR) &&
		!(typentry->flags & TCFLAGS_CHECKED_GT_OPR))
	{
		Oid			gt_opr = InvalidOid;

		if (typentry->btree_opf != InvalidOid)
			gt_opr = FUNC25(typentry->btree_opf,
										 typentry->btree_opintype,
										 typentry->btree_opintype,
										 BTGreaterStrategyNumber);

		/*
		 * As above, make sure array_cmp or record_cmp will succeed; but again
		 * we need no special check for ranges.
		 */
		if (gt_opr == ARRAY_GT_OP &&
			!FUNC13(typentry))
			gt_opr = InvalidOid;
		else if (gt_opr == RECORD_GT_OP &&
				 !FUNC34(typentry))
			gt_opr = InvalidOid;

		typentry->gt_opr = gt_opr;
		typentry->flags |= TCFLAGS_CHECKED_GT_OPR;
	}
	if ((flags & (TYPECACHE_CMP_PROC | TYPECACHE_CMP_PROC_FINFO)) &&
		!(typentry->flags & TCFLAGS_CHECKED_CMP_PROC))
	{
		Oid			cmp_proc = InvalidOid;

		if (typentry->btree_opf != InvalidOid)
			cmp_proc = FUNC26(typentry->btree_opf,
										 typentry->btree_opintype,
										 typentry->btree_opintype,
										 BTORDER_PROC);

		/*
		 * As above, make sure array_cmp or record_cmp will succeed; but again
		 * we need no special check for ranges.
		 */
		if (cmp_proc == F_BTARRAYCMP &&
			!FUNC13(typentry))
			cmp_proc = InvalidOid;
		else if (cmp_proc == F_BTRECORDCMP &&
				 !FUNC34(typentry))
			cmp_proc = InvalidOid;

		/* Force update of cmp_proc_finfo only if we're changing state */
		if (typentry->cmp_proc != cmp_proc)
			typentry->cmp_proc_finfo.fn_oid = InvalidOid;

		typentry->cmp_proc = cmp_proc;
		typentry->flags |= TCFLAGS_CHECKED_CMP_PROC;
	}
	if ((flags & (TYPECACHE_HASH_PROC | TYPECACHE_HASH_PROC_FINFO)) &&
		!(typentry->flags & TCFLAGS_CHECKED_HASH_PROC))
	{
		Oid			hash_proc = InvalidOid;

		/*
		 * We insist that the eq_opr, if one has been determined, match the
		 * hash opclass; else report there is no hash function.
		 */
		if (typentry->hash_opf != InvalidOid &&
			(!FUNC10(typentry->eq_opr) ||
			 typentry->eq_opr == FUNC25(typentry->hash_opf,
													 typentry->hash_opintype,
													 typentry->hash_opintype,
													 HTEqualStrategyNumber)))
			hash_proc = FUNC26(typentry->hash_opf,
										  typentry->hash_opintype,
										  typentry->hash_opintype,
										  HASHSTANDARD_PROC);

		/*
		 * As above, make sure hash_array will succeed.  We don't currently
		 * support hashing for composite types, but when we do, we'll need
		 * more logic here to check that case too.
		 */
		if (hash_proc == F_HASH_ARRAY &&
			!FUNC16(typentry))
			hash_proc = InvalidOid;

		/*
		 * Likewise for hash_range.
		 */
		if (hash_proc == F_HASH_RANGE &&
			!FUNC33(typentry))
			hash_proc = InvalidOid;

		/* Force update of hash_proc_finfo only if we're changing state */
		if (typentry->hash_proc != hash_proc)
			typentry->hash_proc_finfo.fn_oid = InvalidOid;

		typentry->hash_proc = hash_proc;
		typentry->flags |= TCFLAGS_CHECKED_HASH_PROC;
	}
	if ((flags & (TYPECACHE_HASH_EXTENDED_PROC |
				  TYPECACHE_HASH_EXTENDED_PROC_FINFO)) &&
		!(typentry->flags & TCFLAGS_CHECKED_HASH_EXTENDED_PROC))
	{
		Oid			hash_extended_proc = InvalidOid;

		/*
		 * We insist that the eq_opr, if one has been determined, match the
		 * hash opclass; else report there is no hash function.
		 */
		if (typentry->hash_opf != InvalidOid &&
			(!FUNC10(typentry->eq_opr) ||
			 typentry->eq_opr == FUNC25(typentry->hash_opf,
													 typentry->hash_opintype,
													 typentry->hash_opintype,
													 HTEqualStrategyNumber)))
			hash_extended_proc = FUNC26(typentry->hash_opf,
												   typentry->hash_opintype,
												   typentry->hash_opintype,
												   HASHEXTENDED_PROC);

		/*
		 * As above, make sure hash_array_extended will succeed.  We don't
		 * currently support hashing for composite types, but when we do,
		 * we'll need more logic here to check that case too.
		 */
		if (hash_extended_proc == F_HASH_ARRAY_EXTENDED &&
			!FUNC15(typentry))
			hash_extended_proc = InvalidOid;

		/*
		 * Likewise for hash_range_extended.
		 */
		if (hash_extended_proc == F_HASH_RANGE_EXTENDED &&
			!FUNC32(typentry))
			hash_extended_proc = InvalidOid;

		/* Force update of proc finfo only if we're changing state */
		if (typentry->hash_extended_proc != hash_extended_proc)
			typentry->hash_extended_proc_finfo.fn_oid = InvalidOid;

		typentry->hash_extended_proc = hash_extended_proc;
		typentry->flags |= TCFLAGS_CHECKED_HASH_EXTENDED_PROC;
	}

	/*
	 * Set up fmgr lookup info as requested
	 *
	 * Note: we tell fmgr the finfo structures live in CacheMemoryContext,
	 * which is not quite right (they're really in the hash table's private
	 * memory context) but this will do for our purposes.
	 *
	 * Note: the code above avoids invalidating the finfo structs unless the
	 * referenced operator/function OID actually changes.  This is to prevent
	 * unnecessary leakage of any subsidiary data attached to an finfo, since
	 * that would cause session-lifespan memory leaks.
	 */
	if ((flags & TYPECACHE_EQ_OPR_FINFO) &&
		typentry->eq_opr_finfo.fn_oid == InvalidOid &&
		typentry->eq_opr != InvalidOid)
	{
		Oid			eq_opr_func;

		eq_opr_func = FUNC24(typentry->eq_opr);
		if (eq_opr_func != InvalidOid)
			FUNC20(eq_opr_func, &typentry->eq_opr_finfo,
						  CacheMemoryContext);
	}
	if ((flags & TYPECACHE_CMP_PROC_FINFO) &&
		typentry->cmp_proc_finfo.fn_oid == InvalidOid &&
		typentry->cmp_proc != InvalidOid)
	{
		FUNC20(typentry->cmp_proc, &typentry->cmp_proc_finfo,
					  CacheMemoryContext);
	}
	if ((flags & TYPECACHE_HASH_PROC_FINFO) &&
		typentry->hash_proc_finfo.fn_oid == InvalidOid &&
		typentry->hash_proc != InvalidOid)
	{
		FUNC20(typentry->hash_proc, &typentry->hash_proc_finfo,
					  CacheMemoryContext);
	}
	if ((flags & TYPECACHE_HASH_EXTENDED_PROC_FINFO) &&
		typentry->hash_extended_proc_finfo.fn_oid == InvalidOid &&
		typentry->hash_extended_proc != InvalidOid)
	{
		FUNC20(typentry->hash_extended_proc,
					  &typentry->hash_extended_proc_finfo,
					  CacheMemoryContext);
	}

	/*
	 * If it's a composite type (row type), get tupdesc if requested
	 */
	if ((flags & TYPECACHE_TUPDESC) &&
		typentry->tupDesc == NULL &&
		typentry->typtype == TYPTYPE_COMPOSITE)
	{
		FUNC31(typentry);
	}

	/*
	 * If requested, get information about a range type
	 */
	if ((flags & TYPECACHE_RANGE_INFO) &&
		typentry->rngelemtype == NULL &&
		typentry->typtype == TYPTYPE_RANGE)
	{
		FUNC30(typentry);
	}

	/*
	 * If requested, get information about a domain type
	 */
	if ((flags & TYPECACHE_DOMAIN_BASE_INFO) &&
		typentry->domainBaseType == InvalidOid &&
		typentry->typtype == TYPTYPE_DOMAIN)
	{
		typentry->domainBaseTypmod = -1;
		typentry->domainBaseType =
			FUNC21(type_id, &typentry->domainBaseTypmod);
	}
	if ((flags & TYPECACHE_DOMAIN_CONSTR_INFO) &&
		(typentry->flags & TCFLAGS_CHECKED_DOMAIN_CONSTRAINTS) == 0 &&
		typentry->typtype == TYPTYPE_DOMAIN)
	{
		FUNC29(typentry);
	}

	return typentry;
}