#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  list_t ;
struct TYPE_7__ {int /*<<< orphan*/  list; } ;
typedef  TYPE_1__ hashtable_t ;
struct TYPE_8__ {int /*<<< orphan*/ * first; int /*<<< orphan*/ * last; } ;
typedef  TYPE_2__ bucket_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(hashtable_t *hashtable, bucket_t *bucket,
                             list_t *list)
{
    if(FUNC0(hashtable, bucket))
    {
        FUNC1(&hashtable->list, list);
        bucket->first = bucket->last = list;
    }
    else
    {
        FUNC1(bucket->first, list);
        bucket->first = list;
    }
}