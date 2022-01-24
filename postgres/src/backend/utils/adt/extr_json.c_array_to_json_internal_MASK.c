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
typedef  int /*<<< orphan*/  int16 ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  JsonTypeCategory ;
typedef  int Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int*) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int*,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char,int**,int**,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 

__attribute__((used)) static void
FUNC11(Datum array, StringInfo result, bool use_line_feeds)
{
	ArrayType  *v = FUNC4(array);
	Oid			element_type = FUNC1(v);
	int		   *dim;
	int			ndim;
	int			nitems;
	int			count = 0;
	Datum	   *elements;
	bool	   *nulls;
	int16		typlen;
	bool		typbyval;
	char		typalign;
	JsonTypeCategory tcategory;
	Oid			outfuncoid;

	ndim = FUNC2(v);
	dim = FUNC0(v);
	nitems = FUNC3(ndim, dim);

	if (nitems <= 0)
	{
		FUNC5(result, "[]");
		return;
	}

	FUNC8(element_type,
						 &typlen, &typbyval, &typalign);

	FUNC9(element_type,
						 &tcategory, &outfuncoid);

	FUNC7(v, element_type, typlen, typbyval,
					  typalign, &elements, &nulls,
					  &nitems);

	FUNC6(result, 0, ndim, dim, elements, nulls, &count, tcategory,
					  outfuncoid, use_line_feeds);

	FUNC10(elements);
	FUNC10(nulls);
}