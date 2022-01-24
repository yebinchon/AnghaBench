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
typedef  int /*<<< orphan*/  bits8 ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 int* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int FUNC6 (int,int*,int*,int*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int MAXDIM ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int*,int,int,int,char,int*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 char* FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int,char) ; 

Datum
FUNC13(Datum arraydatum,
				  int nSubscripts,
				  int *indx,
				  int arraytyplen,
				  int elmlen,
				  bool elmbyval,
				  char elmalign,
				  bool *isNull)
{
	int			i,
				ndim,
			   *dim,
			   *lb,
				offset,
				fixedDim[1],
				fixedLb[1];
	char	   *arraydataptr,
			   *retptr;
	bits8	   *arraynullsptr;

	if (arraytyplen > 0)
	{
		/*
		 * fixed-length arrays -- these are assumed to be 1-d, 0-based
		 */
		ndim = 1;
		fixedDim[0] = arraytyplen / elmlen;
		fixedLb[0] = 0;
		dim = fixedDim;
		lb = fixedLb;
		arraydataptr = (char *) FUNC8(arraydatum);
		arraynullsptr = NULL;
	}
	else if (FUNC9(FUNC8(arraydatum)))
	{
		/* expanded array: let's do this in a separate function */
		return FUNC10(arraydatum,
										  nSubscripts,
										  indx,
										  arraytyplen,
										  elmlen,
										  elmbyval,
										  elmalign,
										  isNull);
	}
	else
	{
		/* detoast array if necessary, producing normal varlena input */
		ArrayType  *array = FUNC7(arraydatum);

		ndim = FUNC3(array);
		dim = FUNC1(array);
		lb = FUNC2(array);
		arraydataptr = FUNC0(array);
		arraynullsptr = FUNC4(array);
	}

	/*
	 * Return NULL for invalid subscript
	 */
	if (ndim != nSubscripts || ndim <= 0 || ndim > MAXDIM)
	{
		*isNull = true;
		return (Datum) 0;
	}
	for (i = 0; i < ndim; i++)
	{
		if (indx[i] < lb[i] || indx[i] >= (dim[i] + lb[i]))
		{
			*isNull = true;
			return (Datum) 0;
		}
	}

	/*
	 * Calculate the element number
	 */
	offset = FUNC6(nSubscripts, dim, lb, indx);

	/*
	 * Check for NULL array element
	 */
	if (FUNC11(arraynullsptr, offset))
	{
		*isNull = true;
		return (Datum) 0;
	}

	/*
	 * OK, get the element
	 */
	*isNull = false;
	retptr = FUNC12(arraydataptr, 0, arraynullsptr, offset,
						elmlen, elmbyval, elmalign);
	return FUNC5(retptr, elmbyval, elmlen);
}