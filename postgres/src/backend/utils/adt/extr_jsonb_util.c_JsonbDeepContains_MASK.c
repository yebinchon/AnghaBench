#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_27__ {int /*<<< orphan*/  container; } ;
struct TYPE_24__ {int /*<<< orphan*/  data; } ;
struct TYPE_23__ {int nElems; scalar_t__ rawScalar; } ;
struct TYPE_22__ {int /*<<< orphan*/  len; int /*<<< orphan*/  val; } ;
struct TYPE_21__ {scalar_t__ nPairs; } ;
struct TYPE_25__ {TYPE_4__ binary; TYPE_3__ array; TYPE_2__ string; TYPE_1__ object; } ;
struct TYPE_26__ {scalar_t__ type; TYPE_5__ val; } ;
typedef  TYPE_6__ JsonbValue ;
typedef  scalar_t__ JsonbIteratorToken ;
typedef  TYPE_7__ JsonbIterator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  JB_FARRAY ; 
 TYPE_7__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_7__**,TYPE_6__*,int) ; 
 scalar_t__ WJB_BEGIN_ARRAY ; 
 scalar_t__ WJB_BEGIN_OBJECT ; 
 scalar_t__ WJB_ELEM ; 
 scalar_t__ WJB_END_ARRAY ; 
 scalar_t__ WJB_END_OBJECT ; 
 scalar_t__ WJB_KEY ; 
 scalar_t__ WJB_VALUE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 
 TYPE_6__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 
 scalar_t__ jbvArray ; 
 scalar_t__ jbvBinary ; 
 scalar_t__ jbvObject ; 
 scalar_t__ jbvString ; 
 TYPE_6__* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*) ; 

bool
FUNC11(JsonbIterator **val, JsonbIterator **mContained)
{
	JsonbValue	vval,
				vcontained;
	JsonbIteratorToken rval,
				rcont;

	/*
	 * Guard against stack overflow due to overly complex Jsonb.
	 *
	 * Functions called here independently take this precaution, but that
	 * might not be sufficient since this is also a recursive function.
	 */
	FUNC4();

	rval = FUNC3(val, &vval, false);
	rcont = FUNC3(mContained, &vcontained, false);

	if (rval != rcont)
	{
		/*
		 * The differing return values can immediately be taken as indicating
		 * two differing container types at this nesting level, which is
		 * sufficient reason to give up entirely (but it should be the case
		 * that they're both some container type).
		 */
		FUNC0(rval == WJB_BEGIN_OBJECT || rval == WJB_BEGIN_ARRAY);
		FUNC0(rcont == WJB_BEGIN_OBJECT || rcont == WJB_BEGIN_ARRAY);
		return false;
	}
	else if (rcont == WJB_BEGIN_OBJECT)
	{
		FUNC0(vval.type == jbvObject);
		FUNC0(vcontained.type == jbvObject);

		/*
		 * If the lhs has fewer pairs than the rhs, it can't possibly contain
		 * the rhs.  (This conclusion is safe only because we de-duplicate
		 * keys in all Jsonb objects; thus there can be no corresponding
		 * optimization in the array case.)  The case probably won't arise
		 * often, but since it's such a cheap check we may as well make it.
		 */
		if (vval.val.object.nPairs < vcontained.val.object.nPairs)
			return false;

		/* Work through rhs "is it contained within?" object */
		for (;;)
		{
			JsonbValue *lhsVal; /* lhsVal is from pair in lhs object */
			JsonbValue	lhsValBuf;

			rcont = FUNC3(mContained, &vcontained, false);

			/*
			 * When we get through caller's rhs "is it contained within?"
			 * object without failing to find one of its values, it's
			 * contained.
			 */
			if (rcont == WJB_END_OBJECT)
				return true;

			FUNC0(rcont == WJB_KEY);
			FUNC0(vcontained.type == jbvString);

			/* First, find value by key... */
			lhsVal =
				FUNC8((*val)->container,
											 vcontained.val.string.val,
											 vcontained.val.string.len,
											 &lhsValBuf);
			if (!lhsVal)
				return false;

			/*
			 * ...at this stage it is apparent that there is at least a key
			 * match for this rhs pair.
			 */
			rcont = FUNC3(mContained, &vcontained, true);

			FUNC0(rcont == WJB_VALUE);

			/*
			 * Compare rhs pair's value with lhs pair's value just found using
			 * key
			 */
			if (lhsVal->type != vcontained.type)
			{
				return false;
			}
			else if (FUNC1(lhsVal))
			{
				if (!FUNC6(lhsVal, &vcontained))
					return false;
			}
			else
			{
				/* Nested container value (object or array) */
				JsonbIterator *nestval,
						   *nestContained;

				FUNC0(lhsVal->type == jbvBinary);
				FUNC0(vcontained.type == jbvBinary);

				nestval = FUNC2(lhsVal->val.binary.data);
				nestContained = FUNC2(vcontained.val.binary.data);

				/*
				 * Match "value" side of rhs datum object's pair recursively.
				 * It's a nested structure.
				 *
				 * Note that nesting still has to "match up" at the right
				 * nesting sub-levels.  However, there need only be zero or
				 * more matching pairs (or elements) at each nesting level
				 * (provided the *rhs* pairs/elements *all* match on each
				 * level), which enables searching nested structures for a
				 * single String or other primitive type sub-datum quite
				 * effectively (provided the user constructed the rhs nested
				 * structure such that we "know where to look").
				 *
				 * In other words, the mapping of container nodes in the rhs
				 * "vcontained" Jsonb to internal nodes on the lhs is
				 * injective, and parent-child edges on the rhs must be mapped
				 * to parent-child edges on the lhs to satisfy the condition
				 * of containment (plus of course the mapped nodes must be
				 * equal).
				 */
				if (!FUNC11(&nestval, &nestContained))
					return false;
			}
		}
	}
	else if (rcont == WJB_BEGIN_ARRAY)
	{
		JsonbValue *lhsConts = NULL;
		uint32		nLhsElems = vval.val.array.nElems;

		FUNC0(vval.type == jbvArray);
		FUNC0(vcontained.type == jbvArray);

		/*
		 * Handle distinction between "raw scalar" pseudo arrays, and real
		 * arrays.
		 *
		 * A raw scalar may contain another raw scalar, and an array may
		 * contain a raw scalar, but a raw scalar may not contain an array. We
		 * don't do something like this for the object case, since objects can
		 * only contain pairs, never raw scalars (a pair is represented by an
		 * rhs object argument with a single contained pair).
		 */
		if (vval.val.array.rawScalar && !vcontained.val.array.rawScalar)
			return false;

		/* Work through rhs "is it contained within?" array */
		for (;;)
		{
			rcont = FUNC3(mContained, &vcontained, true);

			/*
			 * When we get through caller's rhs "is it contained within?"
			 * array without failing to find one of its values, it's
			 * contained.
			 */
			if (rcont == WJB_END_ARRAY)
				return true;

			FUNC0(rcont == WJB_ELEM);

			if (FUNC1(&vcontained))
			{
				if (!FUNC7((*val)->container,
												 JB_FARRAY,
												 &vcontained))
					return false;
			}
			else
			{
				uint32		i;

				/*
				 * If this is first container found in rhs array (at this
				 * depth), initialize temp lhs array of containers
				 */
				if (lhsConts == NULL)
				{
					uint32		j = 0;

					/* Make room for all possible values */
					lhsConts = FUNC9(sizeof(JsonbValue) * nLhsElems);

					for (i = 0; i < nLhsElems; i++)
					{
						/* Store all lhs elements in temp array */
						rcont = FUNC3(val, &vval, true);
						FUNC0(rcont == WJB_ELEM);

						if (vval.type == jbvBinary)
							lhsConts[j++] = vval;
					}

					/* No container elements in temp array, so give up now */
					if (j == 0)
						return false;

					/* We may have only partially filled array */
					nLhsElems = j;
				}

				/* XXX: Nested array containment is O(N^2) */
				for (i = 0; i < nLhsElems; i++)
				{
					/* Nested container value (object or array) */
					JsonbIterator *nestval,
							   *nestContained;
					bool		contains;

					nestval = FUNC2(lhsConts[i].val.binary.data);
					nestContained = FUNC2(vcontained.val.binary.data);

					contains = FUNC11(&nestval, &nestContained);

					if (nestval)
						FUNC10(nestval);
					if (nestContained)
						FUNC10(nestContained);
					if (contains)
						break;
				}

				/*
				 * Report rhs container value is not contained if couldn't
				 * match rhs container to *some* lhs cont
				 */
				if (i == nLhsElems)
					return false;
			}
		}
	}
	else
	{
		FUNC5(ERROR, "invalid jsonb container type");
	}

	FUNC5(ERROR, "unexpectedly fell off end of jsonb container");
	return false;
}