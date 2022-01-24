#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int int16 ;
typedef  int Size ;
typedef  char* Pointer ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (int,char) ; 
 scalar_t__ FUNC5 (char*) ; 
 int FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 char* FUNC9 (char*) ; 
 int FUNC10 (char*) ; 
 int FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*,char) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Pointer
FUNC17(Pointer ptr, Datum datum, bool typbyval, char typalign,
			int16 typlen, char typstorage)
{
	Size		data_length;

	if (typbyval)
	{
		/* pass-by-value */
		ptr = (char *) FUNC12(ptr, typalign);
		FUNC15(ptr, datum, typlen);
		data_length = typlen;
	}
	else if (typlen == -1)
	{
		/* varlena */
		Pointer		val = FUNC2(datum);

		if (FUNC7(val))
		{
			/*
			 * Throw error, because we must never put a toast pointer inside a
			 * range object.  Caller should have detoasted it.
			 */
			FUNC13(ERROR, "cannot store a toast pointer inside a range");
			data_length = 0;	/* keep compiler quiet */
		}
		else if (FUNC8(val))
		{
			/* no alignment for short varlenas */
			data_length = FUNC11(val);
			FUNC14(ptr, val, data_length);
		}
		else if (FUNC4(typlen, typstorage) &&
				 FUNC5(val))
		{
			/* convert to short varlena -- no alignment */
			data_length = FUNC6(val);
			FUNC3(ptr, data_length);
			FUNC14(ptr + 1, FUNC9(val), data_length - 1);
		}
		else
		{
			/* full 4-byte header varlena */
			ptr = (char *) FUNC12(ptr, typalign);
			data_length = FUNC10(val);
			FUNC14(ptr, val, data_length);
		}
	}
	else if (typlen == -2)
	{
		/* cstring ... never needs alignment */
		FUNC0(typalign == 'c');
		data_length = FUNC16(FUNC1(datum)) + 1;
		FUNC14(ptr, FUNC2(datum), data_length);
	}
	else
	{
		/* fixed-length pass-by-reference */
		ptr = (char *) FUNC12(ptr, typalign);
		FUNC0(typlen > 0);
		data_length = typlen;
		FUNC14(ptr, FUNC2(datum), data_length);
	}

	ptr += data_length;

	return ptr;
}