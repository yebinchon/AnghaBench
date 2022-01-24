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
struct TYPE_3__ {int subscribed_slot; double timeout; double read_timeout; int failover; int persistent; long waitms; int /*<<< orphan*/  nodes; int /*<<< orphan*/  seeds; int /*<<< orphan*/ * err; int /*<<< orphan*/ * auth; scalar_t__ clusterdown; void* flags; } ;
typedef  TYPE_1__ redisCluster ;
typedef  int /*<<< orphan*/  RedisSock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  ht_free_node ; 
 int /*<<< orphan*/  ht_free_seed ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

redisCluster *FUNC3(double timeout, double read_timeout,
                                           int failover, int persistent)
{
    redisCluster *c;

    /* Actual our actual cluster structure */
    c = FUNC1(1, sizeof(redisCluster));

    /* Initialize flags and settings */
    c->flags = FUNC1(1, sizeof(RedisSock));
    c->subscribed_slot = -1;
    c->clusterdown = 0;
    c->timeout = timeout;
    c->read_timeout = read_timeout;
    c->failover = failover;
    c->persistent = persistent;
    c->auth = NULL;
    c->err = NULL;

    /* Set up our waitms based on timeout */
    c->waitms  = (long)(1000 * timeout);

    /* Allocate our seeds hash table */
    FUNC0(c->seeds);
    FUNC2(c->seeds, 0, NULL, ht_free_seed, 0);

    /* Allocate our nodes HashTable */
    FUNC0(c->nodes);
    FUNC2(c->nodes, 0, NULL, ht_free_node, 0);

    return c;
}