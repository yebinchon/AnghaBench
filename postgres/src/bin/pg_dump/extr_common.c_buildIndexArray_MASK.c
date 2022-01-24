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
typedef  int Size ;
typedef  int /*<<< orphan*/  DumpableObject ;

/* Variables and functions */
 int /*<<< orphan*/  DOCatalogIdCompare ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DumpableObject **
FUNC2(void *objArray, int numObjs, Size objSize)
{
	DumpableObject **ptrs;
	int			i;

	ptrs = (DumpableObject **) FUNC0(numObjs * sizeof(DumpableObject *));
	for (i = 0; i < numObjs; i++)
		ptrs[i] = (DumpableObject *) ((char *) objArray + i * objSize);

	/* We can use DOCatalogIdCompare to sort since its first key is OID */
	if (numObjs > 1)
		FUNC1((void *) ptrs, numObjs, sizeof(DumpableObject *),
			  DOCatalogIdCompare);

	return ptrs;
}