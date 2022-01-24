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
typedef  scalar_t__ uint32 ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Bucket ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 

Bucket
FUNC1(Relation rel, Bucket old_bucket,
								   uint32 lowmask, uint32 maxbucket)
{
	Bucket		new_bucket;

	new_bucket = FUNC0(old_bucket, lowmask);
	if (new_bucket > maxbucket)
	{
		lowmask = lowmask >> 1;
		new_bucket = FUNC0(old_bucket, lowmask);
	}

	return new_bucket;
}