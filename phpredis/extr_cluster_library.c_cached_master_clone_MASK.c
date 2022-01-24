#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  slots; } ;
typedef  TYPE_2__ redisClusterNode ;
typedef  int /*<<< orphan*/  redisCluster ;
struct TYPE_8__ {int /*<<< orphan*/  port; int /*<<< orphan*/  addr; } ;
struct TYPE_10__ {size_t slots; TYPE_4__* slot; TYPE_1__ host; } ;
typedef  TYPE_3__ redisCachedMaster ;
struct TYPE_11__ {int /*<<< orphan*/  low; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 

__attribute__((used)) static redisClusterNode*
FUNC4(redisCluster *c, redisCachedMaster *cm) {
    redisClusterNode *node;
    size_t i;

    node = FUNC2(c, FUNC1(cm->host.addr), FUNC0(cm->host.addr),
                               cm->host.port, cm->slot[0].low, 0);

    /* Now copy in our slot ranges */
    for (i = 0; i < cm->slots; i++) {
        FUNC3(&node->slots, &cm->slot[i]);
    }

    return node;
}