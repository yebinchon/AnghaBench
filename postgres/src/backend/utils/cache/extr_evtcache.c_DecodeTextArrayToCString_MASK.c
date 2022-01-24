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
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ TEXTOID ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int,int,char,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 char** FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(Datum array, char ***cstringp)
{
	ArrayType  *arr = FUNC3(array);
	Datum	   *elems;
	char	  **cstring;
	int			i;
	int			nelems;

	if (FUNC2(arr) != 1 || FUNC1(arr) || FUNC0(arr) != TEXTOID)
		FUNC6(ERROR, "expected 1-D text array");
	FUNC5(arr, TEXTOID, -1, false, 'i', &elems, NULL, &nelems);

	cstring = FUNC7(nelems * sizeof(char *));
	for (i = 0; i < nelems; ++i)
		cstring[i] = FUNC4(elems[i]);

	FUNC8(elems);
	*cstringp = cstring;
	return nelems;
}