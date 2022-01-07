
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ResetFilter {unsigned long long seed; int bucket_count; int bucket_mask; void* buckets; } ;


 void* CALLOC (int,int) ;
 int next_pow2 (size_t) ;

struct ResetFilter *
rstfilter_create(unsigned long long seed, size_t bucket_count)
{
    struct ResetFilter *rf;

    rf = CALLOC(1, sizeof(*rf));
    rf->seed = seed;
    rf->bucket_count = next_pow2(bucket_count);
    rf->bucket_mask = rf->bucket_count - 1;
    rf->buckets = CALLOC(rf->bucket_count/2, sizeof(*rf->buckets));

    return rf;
}
