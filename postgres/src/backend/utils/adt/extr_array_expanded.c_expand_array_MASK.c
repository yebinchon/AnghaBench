#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ element_type; int /*<<< orphan*/  typalign; scalar_t__ typbyval; int /*<<< orphan*/  typlen; } ;
struct TYPE_6__ {scalar_t__ ea_magic; scalar_t__ element_type; char* fendptr; int /*<<< orphan*/  hdr; int /*<<< orphan*/  fstartptr; int /*<<< orphan*/ * fvalue; scalar_t__ flat_size; scalar_t__ nelems; scalar_t__ dvalueslen; int /*<<< orphan*/ * dnulls; int /*<<< orphan*/ * dvalues; int /*<<< orphan*/  typalign; scalar_t__ typbyval; int /*<<< orphan*/  typlen; int /*<<< orphan*/  lbound; int /*<<< orphan*/  dims; int /*<<< orphan*/  ndims; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ ExpandedArrayHeader ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;
typedef  TYPE_2__ ArrayMetaState ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_START_SMALL_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ EA_MAGIC ; 
 int /*<<< orphan*/  EA_methods ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 

Datum
FUNC18(Datum arraydatum, MemoryContext parentcontext,
			 ArrayMetaState *metacache)
{
	ArrayType  *array;
	ExpandedArrayHeader *eah;
	MemoryContext objcxt;
	MemoryContext oldcxt;
	ArrayMetaState fakecache;

	/*
	 * Allocate private context for expanded object.  We start by assuming
	 * that the array won't be very large; but if it does grow a lot, don't
	 * constrain aset.c's large-context behavior.
	 */
	objcxt = FUNC6(parentcontext,
								   "expanded array",
								   ALLOCSET_START_SMALL_SIZES);

	/* Set up expanded array header */
	eah = (ExpandedArrayHeader *)
		FUNC13(objcxt, sizeof(ExpandedArrayHeader));

	FUNC12(&eah->hdr, &EA_methods, objcxt);
	eah->ea_magic = EA_MAGIC;

	/* If the source is an expanded array, we may be able to optimize */
	if (FUNC15(FUNC10(arraydatum)))
	{
		ExpandedArrayHeader *oldeah = (ExpandedArrayHeader *) FUNC9(arraydatum);

		FUNC7(oldeah->ea_magic == EA_MAGIC);

		/*
		 * Update caller's cache if provided; we don't need it this time, but
		 * next call might be for a non-expanded source array.  Furthermore,
		 * if the caller didn't provide a cache area, use some local storage
		 * to cache anyway, thereby avoiding a catalog lookup in the case
		 * where we fall through to the flat-copy code path.
		 */
		if (metacache == NULL)
			metacache = &fakecache;
		metacache->element_type = oldeah->element_type;
		metacache->typlen = oldeah->typlen;
		metacache->typbyval = oldeah->typbyval;
		metacache->typalign = oldeah->typalign;

		/*
		 * If element type is pass-by-value and we have a Datum-array
		 * representation, just copy the source's metadata and Datum/isnull
		 * arrays.  The original flat array, if present at all, adds no
		 * additional information so we need not copy it.
		 */
		if (oldeah->typbyval && oldeah->dvalues != NULL)
		{
			FUNC16(eah, oldeah);
			/* return a R/W pointer to the expanded array */
			return FUNC11(&eah->hdr);
		}

		/*
		 * Otherwise, either we have only a flat representation or the
		 * elements are pass-by-reference.  In either case, the best thing
		 * seems to be to copy the source as a flat representation and then
		 * deconstruct that later if necessary.  For the pass-by-ref case, we
		 * could perhaps save some cycles with custom code that generates the
		 * deconstructed representation in parallel with copying the values,
		 * but it would be a lot of extra code for fairly marginal gain.  So,
		 * fall through into the flat-source code path.
		 */
	}

	/*
	 * Detoast and copy source array into private context, as a flat array.
	 *
	 * Note that this coding risks leaking some memory in the private context
	 * if we have to fetch data from a TOAST table; however, experimentation
	 * says that the leak is minimal.  Doing it this way saves a copy step,
	 * which seems worthwhile, especially if the array is large enough to need
	 * external storage.
	 */
	oldcxt = FUNC14(objcxt);
	array = FUNC8(arraydatum);
	FUNC14(oldcxt);

	eah->ndims = FUNC4(array);
	/* note these pointers point into the fvalue header! */
	eah->dims = FUNC1(array);
	eah->lbound = FUNC3(array);

	/* Save array's element-type data for possible use later */
	eah->element_type = FUNC2(array);
	if (metacache && metacache->element_type == eah->element_type)
	{
		/* We have a valid cache of representational data */
		eah->typlen = metacache->typlen;
		eah->typbyval = metacache->typbyval;
		eah->typalign = metacache->typalign;
	}
	else
	{
		/* No, so look it up */
		FUNC17(eah->element_type,
							 &eah->typlen,
							 &eah->typbyval,
							 &eah->typalign);
		/* Update cache if provided */
		if (metacache)
		{
			metacache->element_type = eah->element_type;
			metacache->typlen = eah->typlen;
			metacache->typbyval = eah->typbyval;
			metacache->typalign = eah->typalign;
		}
	}

	/* we don't make a deconstructed representation now */
	eah->dvalues = NULL;
	eah->dnulls = NULL;
	eah->dvalueslen = 0;
	eah->nelems = 0;
	eah->flat_size = 0;

	/* remember we have a flat representation */
	eah->fvalue = array;
	eah->fstartptr = FUNC0(array);
	eah->fendptr = ((char *) array) + FUNC5(array);

	/* return a R/W pointer to the expanded array */
	return FUNC11(&eah->hdr);
}