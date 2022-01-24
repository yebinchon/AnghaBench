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

/* Variables and functions */
 long DEF_DIRSIZE ; 
 long DEF_FFACTOR ; 
 long DEF_SEGSIZE ; 
 long FUNC0 (long) ; 

long
FUNC1(long num_entries)
{
	long		nBuckets,
				nSegments,
				nDirEntries;

	/* estimate number of buckets wanted */
	nBuckets = FUNC0((num_entries - 1) / DEF_FFACTOR + 1);
	/* # of segments needed for nBuckets */
	nSegments = FUNC0((nBuckets - 1) / DEF_SEGSIZE + 1);
	/* directory entries */
	nDirEntries = DEF_DIRSIZE;
	while (nDirEntries < nSegments)
		nDirEntries <<= 1;		/* dir_alloc doubles dsize at each call */

	return nDirEntries;
}