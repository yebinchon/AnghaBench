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
struct varlena {int dummy; } ;
typedef  scalar_t__ Size ;
typedef  int /*<<< orphan*/  ExpandedObjectHeader ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 struct varlena* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (struct varlena*) ; 
 scalar_t__ FUNC6 (struct varlena*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct varlena*,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 

Datum
FUNC10(Datum value, bool typByVal, int typLen)
{
	Datum		res;

	if (typByVal)
		res = value;
	else if (typLen == -1)
	{
		/* It is a varlena datatype */
		struct varlena *vl = (struct varlena *) FUNC1(value);

		if (FUNC5(vl))
		{
			/* Flatten into the caller's memory context */
			ExpandedObjectHeader *eoh = FUNC0(value);
			Size		resultsize;
			char	   *resultptr;

			resultsize = FUNC3(eoh);
			resultptr = (char *) FUNC9(resultsize);
			FUNC2(eoh, (void *) resultptr, resultsize);
			res = FUNC4(resultptr);
		}
		else
		{
			/* Otherwise, just copy the varlena datum verbatim */
			Size		realSize;
			char	   *resultptr;

			realSize = (Size) FUNC6(vl);
			resultptr = (char *) FUNC9(realSize);
			FUNC8(resultptr, vl, realSize);
			res = FUNC4(resultptr);
		}
	}
	else
	{
		/* Pass by reference, but not varlena, so not toasted */
		Size		realSize;
		char	   *resultptr;

		realSize = FUNC7(value, typByVal, typLen);

		resultptr = (char *) FUNC9(realSize);
		FUNC8(resultptr, FUNC1(value), realSize);
		res = FUNC4(resultptr);
	}
	return res;
}