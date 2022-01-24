#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int zend_ulong ;
struct TYPE_8__ {TYPE_2__* slaves; } ;
typedef  TYPE_1__ redisClusterNode ;
struct TYPE_9__ {int nNextFreeElement; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  ht_free_slave ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(redisClusterNode *master, redisClusterNode *slave)
{
    zend_ulong index;

    // Allocate our slaves hash table if we haven't yet
    if (!master->slaves) {
        FUNC0(master->slaves);
        FUNC2(master->slaves, 0, NULL, ht_free_slave, 0);
        index = 1;
    } else {
        index = master->slaves->nNextFreeElement;
    }

    return FUNC1(master->slaves, index, slave) != NULL;
}