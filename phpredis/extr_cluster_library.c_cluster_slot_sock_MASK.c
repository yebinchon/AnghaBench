#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zend_ulong ;
struct TYPE_3__ {int /*<<< orphan*/ * sock; } ;
typedef  TYPE_1__ redisClusterNode ;
typedef  int /*<<< orphan*/  redisCluster ;
typedef  int /*<<< orphan*/  RedisSock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned short) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,unsigned short) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static RedisSock *FUNC3(redisCluster *c, unsigned short slot,
                                    zend_ulong slaveidx)
{
    redisClusterNode *node;

    /* Return the master if we're not looking for a slave */
    if (slaveidx == 0) {
        return FUNC1(c, slot);
    }

    /* Abort if we can't find this slave */
    if (!FUNC0(c, slot) ||
        (node = FUNC2(FUNC0(c,slot), slaveidx)) == NULL
    ) {
        return NULL;
    }

    /* Success, return the slave */
    return node->sock;
}