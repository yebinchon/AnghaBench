#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int ndim; int dataoffset; int /*<<< orphan*/  elemtype; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ArrayType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static ArrayType *
FUNC5(int ndims, int *dimv, int *lbsv, int nbytes,
					  Oid elmtype, int dataoffset)
{
	ArrayType  *result;

	result = (ArrayType *) FUNC4(nbytes);
	FUNC2(result, nbytes);
	result->ndim = ndims;
	result->dataoffset = dataoffset;
	result->elemtype = elmtype;
	FUNC3(FUNC0(result), dimv, ndims * sizeof(int));
	FUNC3(FUNC1(result), lbsv, ndims * sizeof(int));

	return result;
}