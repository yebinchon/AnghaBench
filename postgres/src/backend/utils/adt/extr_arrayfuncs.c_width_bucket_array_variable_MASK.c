#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
struct TYPE_9__ {int typlen; int typbyval; char typalign; int /*<<< orphan*/  cmp_proc_finfo; } ;
typedef  TYPE_2__ TypeCacheEntry ;
struct TYPE_10__ {TYPE_1__* args; } ;
struct TYPE_8__ {int isnull; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int) ; 
 char* FUNC8 (char*,int,char*) ; 
 scalar_t__ FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int) ; 
 TYPE_4__* locfcinfo ; 

__attribute__((used)) static int
FUNC11(Datum operand,
							ArrayType *thresholds,
							Oid collation,
							TypeCacheEntry *typentry)
{
	FUNC7(locfcinfo, 2);
	char	   *thresholds_data;
	int			typlen = typentry->typlen;
	bool		typbyval = typentry->typbyval;
	char		typalign = typentry->typalign;
	int			left;
	int			right;

	thresholds_data = (char *) FUNC0(thresholds);

	FUNC6(*locfcinfo, &typentry->cmp_proc_finfo, 2,
							 collation, NULL, NULL);

	/* Find the bucket */
	left = 0;
	right = FUNC3(FUNC2(thresholds), FUNC1(thresholds));
	while (left < right)
	{
		int			mid = (left + right) / 2;
		char	   *ptr;
		int			i;
		int32		cmpresult;

		/* Locate mid'th array element by advancing from left element */
		ptr = thresholds_data;
		for (i = left; i < mid; i++)
		{
			ptr = FUNC8(ptr, typlen, ptr);
			ptr = (char *) FUNC9(ptr, typalign);
		}

		locfcinfo->args[0].value = operand;
		locfcinfo->args[0].isnull = false;
		locfcinfo->args[1].value = FUNC10(ptr, typbyval, typlen);
		locfcinfo->args[1].isnull = false;

		cmpresult = FUNC4(FUNC5(locfcinfo));

		if (cmpresult < 0)
			right = mid;
		else
		{
			left = mid + 1;

			/*
			 * Move the thresholds pointer to match new "left" index, so we
			 * don't have to seek over those elements again.  This trick
			 * ensures we do only O(N) array indexing work, not O(N^2).
			 */
			ptr = FUNC8(ptr, typlen, ptr);
			thresholds_data = (char *) FUNC9(ptr, typalign);
		}
	}

	return left;
}