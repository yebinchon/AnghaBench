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
typedef  int /*<<< orphan*/  HASHSEGMENT ;
typedef  int /*<<< orphan*/  HASHHDR ;
typedef  int /*<<< orphan*/  HASHELEMENT ;
typedef  int /*<<< orphan*/  HASHBUCKET ;

/* Variables and functions */
 long DEF_DIRSIZE ; 
 long DEF_FFACTOR ; 
 long DEF_SEGSIZE ; 
 long FUNC0 (int) ; 
 int FUNC1 (int,long) ; 
 long FUNC2 (int) ; 
 long FUNC3 (long,long) ; 
 long FUNC4 (long) ; 

Size
FUNC5(long num_entries, Size entrysize)
{
	Size		size;
	long		nBuckets,
				nSegments,
				nDirEntries,
				nElementAllocs,
				elementSize,
				elementAllocCnt;

	/* estimate number of buckets wanted */
	nBuckets = FUNC4((num_entries - 1) / DEF_FFACTOR + 1);
	/* # of segments needed for nBuckets */
	nSegments = FUNC4((nBuckets - 1) / DEF_SEGSIZE + 1);
	/* directory entries */
	nDirEntries = DEF_DIRSIZE;
	while (nDirEntries < nSegments)
		nDirEntries <<= 1;		/* dir_alloc doubles dsize at each call */

	/* fixed control info */
	size = FUNC0(sizeof(HASHHDR));	/* but not HTAB, per above */
	/* directory */
	size = FUNC1(size, FUNC3(nDirEntries, sizeof(HASHSEGMENT)));
	/* segments */
	size = FUNC1(size, FUNC3(nSegments,
								   FUNC0(DEF_SEGSIZE * sizeof(HASHBUCKET))));
	/* elements --- allocated in groups of choose_nelem_alloc() entries */
	elementAllocCnt = FUNC2(entrysize);
	nElementAllocs = (num_entries - 1) / elementAllocCnt + 1;
	elementSize = FUNC0(sizeof(HASHELEMENT)) + FUNC0(entrysize);
	size = FUNC1(size,
					FUNC3(nElementAllocs,
							 FUNC3(elementAllocCnt, elementSize)));

	return size;
}