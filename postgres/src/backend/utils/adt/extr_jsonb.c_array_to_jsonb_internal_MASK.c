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
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_4__ {int /*<<< orphan*/  parseState; void* res; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  JsonbTypeCategory ;
typedef  TYPE_1__ JsonbInState ;
typedef  int Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int*) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  WJB_BEGIN_ARRAY ; 
 int /*<<< orphan*/  WJB_END_ARRAY ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,int*,int*,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char,int**,int**,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 
 void* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(Datum array, JsonbInState *result)
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
	JsonbTypeCategory tcategory;
	Oid			outfuncoid;

	ndim = FUNC2(v);
	dim = FUNC0(v);
	nitems = FUNC3(ndim, dim);

	if (nitems <= 0)
	{
		result->res = FUNC10(&result->parseState, WJB_BEGIN_ARRAY, NULL);
		result->res = FUNC10(&result->parseState, WJB_END_ARRAY, NULL);
		return;
	}

	FUNC7(element_type,
						 &typlen, &typbyval, &typalign);

	FUNC8(element_type,
						  &tcategory, &outfuncoid);

	FUNC6(v, element_type, typlen, typbyval,
					  typalign, &elements, &nulls,
					  &nitems);

	FUNC5(result, 0, ndim, dim, elements, nulls, &count, tcategory,
					   outfuncoid);

	FUNC9(elements);
	FUNC9(nulls);
}