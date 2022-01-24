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
typedef  unsigned char uint64 ;

/* Variables and functions */
 unsigned char FUNC0 (int) ; 
 int stmtCacheEntPerBucket ; 
 unsigned char stmtCacheNBuckets ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static int
FUNC2(const char *ecpgQuery)
{
	int			stmtIx,
				bucketNo,
				hashLeng,
				stmtLeng;
	uint64		hashVal,
				rotVal;

	stmtLeng = FUNC1(ecpgQuery);
	hashLeng = 50;				/* use 1st 50 characters of statement */
	if (hashLeng > stmtLeng)	/* if the statement isn't that long */
		hashLeng = stmtLeng;	/* use its actual length */

	hashVal = 0;
	for (stmtIx = 0; stmtIx < hashLeng; ++stmtIx)
	{
		hashVal = hashVal + (unsigned char) ecpgQuery[stmtIx];
		/* rotate 32-bit hash value left 13 bits */
		hashVal = hashVal << 13;
		rotVal = (hashVal & FUNC0(0x1fff00000000)) >> 32;
		hashVal = (hashVal & FUNC0(0xffffffff)) | rotVal;
	}

	bucketNo = hashVal % stmtCacheNBuckets;

	/* Add 1 so that array entry 0 is never used */
	return bucketNo * stmtCacheEntPerBucket + 1;
}