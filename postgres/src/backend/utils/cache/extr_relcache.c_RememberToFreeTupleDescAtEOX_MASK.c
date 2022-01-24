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
typedef  int int32 ;
typedef  int /*<<< orphan*/  TupleDesc ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/ * EOXactTupleDescArray ; 
 int EOXactTupleDescArrayLen ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int NextEOXactTupleDescNum ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4(TupleDesc td)
{
	if (EOXactTupleDescArray == NULL)
	{
		MemoryContext oldcxt;

		oldcxt = FUNC1(CacheMemoryContext);

		EOXactTupleDescArray = (TupleDesc *) FUNC2(16 * sizeof(TupleDesc));
		EOXactTupleDescArrayLen = 16;
		NextEOXactTupleDescNum = 0;
		FUNC1(oldcxt);
	}
	else if (NextEOXactTupleDescNum >= EOXactTupleDescArrayLen)
	{
		int32		newlen = EOXactTupleDescArrayLen * 2;

		FUNC0(EOXactTupleDescArrayLen > 0);

		EOXactTupleDescArray = (TupleDesc *) FUNC3(EOXactTupleDescArray,
													  newlen * sizeof(TupleDesc));
		EOXactTupleDescArrayLen = newlen;
	}

	EOXactTupleDescArray[NextEOXactTupleDescNum++] = td;
}