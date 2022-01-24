#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct hashtable_bucket {TYPE_2__* last; TYPE_2__* first; } ;
struct TYPE_9__ {size_t hash; int /*<<< orphan*/  list; } ;
typedef  TYPE_1__ pair_t ;
struct TYPE_10__ {struct TYPE_10__* next; } ;
typedef  TYPE_2__ list_t ;
struct TYPE_11__ {int order; struct hashtable_bucket* buckets; TYPE_2__ list; } ;
typedef  TYPE_3__ hashtable_t ;
typedef  int /*<<< orphan*/  bucket_t ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,struct hashtable_bucket*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hashtable_bucket*) ; 
 struct hashtable_bucket* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_1__* FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(hashtable_t *hashtable)
{
    list_t *list, *next;
    pair_t *pair;
    size_t i, index, new_size, new_order;
    struct hashtable_bucket *new_buckets;

    new_order = hashtable->order + 1;
    new_size = FUNC0(new_order);

    new_buckets = FUNC3(new_size * sizeof(bucket_t));
    if(!new_buckets)
        return -1;

    FUNC2(hashtable->buckets);
    hashtable->buckets = new_buckets;
    hashtable->order = new_order;

    for(i = 0; i < FUNC0(hashtable->order); i++)
    {
        hashtable->buckets[i].first = hashtable->buckets[i].last =
            &hashtable->list;
    }

    list = hashtable->list.next;
    FUNC4(&hashtable->list);

    for(; list != &hashtable->list; list = next) {
        next = list->next;
        pair = FUNC5(list);
        index = pair->hash % new_size;
        FUNC1(hashtable, &hashtable->buckets[index], &pair->list);
    }

    return 0;
}