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
typedef  int /*<<< orphan*/  uint64 ;
typedef  int int32 ;
typedef  int /*<<< orphan*/  TupleDesc ;

/* Variables and functions */
 int /*<<< orphan*/  CacheMemoryContext ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * RecordCacheArray ; 
 int RecordCacheArrayLen ; 
 int /*<<< orphan*/ * RecordIdentifierArray ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3(int32 typmod)
{
	if (RecordCacheArray == NULL)
	{
		RecordCacheArray = (TupleDesc *)
			FUNC0(CacheMemoryContext, 64 * sizeof(TupleDesc));
		RecordIdentifierArray = (uint64 *)
			FUNC0(CacheMemoryContext, 64 * sizeof(uint64));
		RecordCacheArrayLen = 64;
	}

	if (typmod >= RecordCacheArrayLen)
	{
		int32		newlen = RecordCacheArrayLen * 2;

		while (typmod >= newlen)
			newlen *= 2;

		RecordCacheArray = (TupleDesc *) FUNC2(RecordCacheArray,
												  newlen * sizeof(TupleDesc));
		FUNC1(RecordCacheArray + RecordCacheArrayLen, 0,
			   (newlen - RecordCacheArrayLen) * sizeof(TupleDesc));
		RecordIdentifierArray = (uint64 *) FUNC2(RecordIdentifierArray,
													newlen * sizeof(uint64));
		FUNC1(RecordIdentifierArray + RecordCacheArrayLen, 0,
			   (newlen - RecordCacheArrayLen) * sizeof(uint64));
		RecordCacheArrayLen = newlen;
	}
}