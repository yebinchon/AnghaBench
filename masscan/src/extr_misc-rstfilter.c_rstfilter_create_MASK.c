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
struct ResetFilter {unsigned long long seed; int bucket_count; int bucket_mask; void* buckets; } ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int FUNC1 (size_t) ; 

struct ResetFilter *
FUNC2(unsigned long long seed, size_t bucket_count)
{
    struct ResetFilter *rf;
    
    rf = FUNC0(1, sizeof(*rf));
    rf->seed = seed;
    rf->bucket_count = FUNC1(bucket_count);
    rf->bucket_mask = rf->bucket_count - 1;
    rf->buckets = FUNC0(rf->bucket_count/2, sizeof(*rf->buckets));
    
    return rf;
}