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
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  TEXTOID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,char,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static List *
FUNC4(ArrayType *textarray)
{
	Datum	   *elems;
	int			nelems,
				i;
	List	   *res = NIL;

	FUNC1(textarray,
					  TEXTOID, -1, false, 'i',
					  &elems, NULL, &nelems);

	if (nelems == 0)
		return NIL;

	for (i = 0; i < nelems; i++)
		res = FUNC2(res, FUNC3(FUNC0(elems[i])));

	return res;
}