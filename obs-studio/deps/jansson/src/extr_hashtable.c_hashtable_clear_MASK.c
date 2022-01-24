#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ size; int /*<<< orphan*/  ordered_list; int /*<<< orphan*/  list; TYPE_1__* buckets; int /*<<< orphan*/  order; } ;
typedef  TYPE_2__ hashtable_t ;
struct TYPE_5__ {int /*<<< orphan*/ * last; int /*<<< orphan*/ * first; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(hashtable_t *hashtable)
{
    size_t i;

    FUNC1(hashtable);

    for(i = 0; i < FUNC0(hashtable->order); i++)
    {
        hashtable->buckets[i].first = hashtable->buckets[i].last =
            &hashtable->list;
    }

    FUNC2(&hashtable->list);
    FUNC2(&hashtable->ordered_list);
    hashtable->size = 0;
}