#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16 ;
typedef  int bits8 ;
struct TYPE_4__ {char attalign; int attlen; scalar_t__ attbyval; } ;
typedef  int Size ;
typedef  int /*<<< orphan*/  Pointer ;
typedef  TYPE_1__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  ExpandedObjectHeader ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HEAP_HASEXTERNAL ; 
 int /*<<< orphan*/  HEAP_HASNULL ; 
 int /*<<< orphan*/  HEAP_HASVARWIDTH ; 
 int HIGHBIT ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (char*,char) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC21(Form_pg_attribute att,
		 bits8 **bit,
		 int *bitmask,
		 char **dataP,
		 uint16 *infomask,
		 Datum datum,
		 bool isnull)
{
	Size		data_length;
	char	   *data = *dataP;

	/*
	 * If we're building a null bitmap, set the appropriate bit for the
	 * current column value here.
	 */
	if (bit != NULL)
	{
		if (*bitmask != HIGHBIT)
			*bitmask <<= 1;
		else
		{
			*bit += 1;
			**bit = 0x0;
			*bitmask = 1;
		}

		if (isnull)
		{
			*infomask |= HEAP_HASNULL;
			return;
		}

		**bit |= *bitmask;
	}

	/*
	 * XXX we use the att_align macros on the pointer value itself, not on an
	 * offset.  This is a bit of a hack.
	 */
	if (att->attbyval)
	{
		/* pass-by-value */
		data = (char *) FUNC17(data, att->attalign);
		FUNC19(data, datum, att->attlen);
		data_length = att->attlen;
	}
	else if (att->attlen == -1)
	{
		/* varlena */
		Pointer		val = FUNC3(datum);

		*infomask |= HEAP_HASVARWIDTH;
		if (FUNC9(val))
		{
			if (FUNC10(val))
			{
				/*
				 * we want to flatten the expanded value so that the
				 * constructed tuple doesn't depend on it
				 */
				ExpandedObjectHeader *eoh = FUNC2(datum);

				data = (char *) FUNC17(data,
												  att->attalign);
				data_length = FUNC5(eoh);
				FUNC4(eoh, data, data_length);
			}
			else
			{
				*infomask |= HEAP_HASEXTERNAL;
				/* no alignment, since it's short by definition */
				data_length = FUNC15(val);
				FUNC18(data, val, data_length);
			}
		}
		else if (FUNC11(val))
		{
			/* no alignment for short varlenas */
			data_length = FUNC16(val);
			FUNC18(data, val, data_length);
		}
		else if (FUNC13(att) &&
				 FUNC7(val))
		{
			/* convert to short varlena -- no alignment */
			data_length = FUNC8(val);
			FUNC6(data, data_length);
			FUNC18(data + 1, FUNC12(val), data_length - 1);
		}
		else
		{
			/* full 4-byte header varlena */
			data = (char *) FUNC17(data,
											  att->attalign);
			data_length = FUNC14(val);
			FUNC18(data, val, data_length);
		}
	}
	else if (att->attlen == -2)
	{
		/* cstring ... never needs alignment */
		*infomask |= HEAP_HASVARWIDTH;
		FUNC0(att->attalign == 'c');
		data_length = FUNC20(FUNC1(datum)) + 1;
		FUNC18(data, FUNC3(datum), data_length);
	}
	else
	{
		/* fixed-length pass-by-reference */
		data = (char *) FUNC17(data, att->attalign);
		FUNC0(att->attlen > 0);
		data_length = att->attlen;
		FUNC18(data, FUNC3(datum), data_length);
	}

	data += data_length;
	*dataP = data;
}