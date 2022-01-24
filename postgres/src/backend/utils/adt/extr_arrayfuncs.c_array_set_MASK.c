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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ,int,int,int,int,char) ; 

ArrayType *
FUNC3(ArrayType *array, int nSubscripts, int *indx,
		  Datum dataValue, bool isNull,
		  int arraytyplen, int elmlen, bool elmbyval, char elmalign)
{
	return FUNC0(FUNC2(FUNC1(array),
												nSubscripts, indx,
												dataValue, isNull,
												arraytyplen,
												elmlen, elmbyval, elmalign));
}