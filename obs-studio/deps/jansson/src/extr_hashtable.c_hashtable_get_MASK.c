#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* value; } ;
typedef  TYPE_1__ pair_t ;
struct TYPE_7__ {int /*<<< orphan*/  order; int /*<<< orphan*/ * buckets; } ;
typedef  TYPE_2__ hashtable_t ;
typedef  int /*<<< orphan*/  bucket_t ;

/* Variables and functions */
 size_t FUNC0 (char const*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,char const*,size_t) ; 

void *FUNC3(hashtable_t *hashtable, const char *key)
{
    pair_t *pair;
    size_t hash;
    bucket_t *bucket;

    hash = FUNC0(key);
    bucket = &hashtable->buckets[hash & FUNC1(hashtable->order)];

    pair = FUNC2(hashtable, bucket, key, hash);
    if(!pair)
        return NULL;

    return pair->value;
}