#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {size_t slot; scalar_t__ slave; } ;
typedef  TYPE_1__ redisClusterNode ;
struct TYPE_11__ {size_t redir_slot; char* redir_host; int redir_port; TYPE_1__** master; int /*<<< orphan*/  redir_host_len; int /*<<< orphan*/  nodes; } ;
typedef  TYPE_2__ redisCluster ;
typedef  int /*<<< orphan*/  key ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,char*,int) ; 
 TYPE_1__* FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ,int,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (char*,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,size_t,TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(redisCluster *c) {
    redisClusterNode *node;
    char key[1024];
    size_t klen;

    /* Do we already have the new slot mapped */
    if (c->master[c->redir_slot]) {
        /* No need to do anything if it's the same node */
        if (!FUNC0(c)) {
            return;
        }

        /* Check to see if we have this new node mapped */
        node = FUNC1(c, c->redir_host, c->redir_port);

        if (node) {
            /* Just point to this slot */
            c->master[c->redir_slot] = node;
        } else {
            /* Create our node */
            node = FUNC2(c, c->redir_host, c->redir_host_len,
                c->redir_port, c->redir_slot, 0);

            /* Our node is new, so keep track of it for cleanup */
            klen = FUNC3(key, sizeof(key), "%s:%d", c->redir_host, c->redir_port);
            FUNC4(c->nodes, key, klen, node);

            /* Now point our slot at the node */
            c->master[c->redir_slot] = node;
        }
    } else {
        /* Check to see if the ip and port are mapped */
        node = FUNC1(c, c->redir_host, c->redir_port);
        if (!node) {
            node = FUNC2(c, c->redir_host, c->redir_host_len,
                c->redir_port, c->redir_slot, 0);
        }

        /* Map the slot to this node */
        c->master[c->redir_slot] = node;
    }

    /* Update slot inside of node, so it can be found for command sending */
    node->slot = c->redir_slot;

    /* Make sure we unflag this node as a slave, as Redis Cluster will only ever
     * direct us to master nodes. */
    node->slave = 0;
}