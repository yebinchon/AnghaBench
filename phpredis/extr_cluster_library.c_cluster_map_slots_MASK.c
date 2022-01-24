#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {short low; short high; } ;
typedef  TYPE_1__ redisSlotRange ;
struct TYPE_17__ {int /*<<< orphan*/  slots; } ;
typedef  TYPE_2__ redisClusterNode ;
struct TYPE_18__ {TYPE_2__** master; int /*<<< orphan*/  nodes; } ;
typedef  TYPE_3__ redisCluster ;
typedef  int /*<<< orphan*/  key ;
struct TYPE_19__ {int elements; char* str; int len; scalar_t__ integer; struct TYPE_19__** element; } ;
typedef  TYPE_4__ clusterReply ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC3 (TYPE_3__*,char*,int,unsigned short,short,int) ; 
 int FUNC4 (char*,int,char*,char*,unsigned short) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(redisCluster *c, clusterReply *r) {
    redisClusterNode *pnode, *master, *slave;
    redisSlotRange range;
    int i,j, hlen, klen;
    short low, high;
    clusterReply *r2, *r3;
    unsigned short port;
    char *host, key[1024];

    for (i = 0; i < r->elements; i++) {
        // Inner response
        r2 = r->element[i];

        // Validate outer and master slot
        if (!FUNC1(r2) || !FUNC0(r2->element[2])) {
            return -1;
        }

        // Master
        r3 = r2->element[2];

        // Grab our slot range, as well as master host/port
        low  = (unsigned short)r2->element[0]->integer;
        high = (unsigned short)r2->element[1]->integer;
        host = r3->element[0]->str;
        hlen = r3->element[0]->len;
        port = (unsigned short)r3->element[1]->integer;

        // If the node is new, create and add to nodes.  Otherwise use it.
        klen = FUNC4(key, sizeof(key), "%s:%d", host, port);
        if ((pnode = FUNC5(c->nodes, key, klen)) == NULL) {
            master = FUNC3(c, host, hlen, port, low, 0);
            FUNC6(c->nodes, key, klen, master);
        } else {
            master = pnode;
        }

        // Attach slaves
        for (j = 3; j< r2->elements; j++) {
            r3 = r2->element[j];
            if (!FUNC0(r3)) {
                return -1;
            }

            // Skip slaves where the host is ""
            if (r3->element[0]->len == 0) continue;

            // Attach this node to our slave
            slave = FUNC3(c, r3->element[0]->str,
                (int)r3->element[0]->len,
                (unsigned short)r3->element[1]->integer, low, 1);
            FUNC2(master, slave);
        }

        // Attach this node to each slot in the range
        for (j = low; j<= high; j++) {
            c->master[j] = master;
        }

        /* Append to our list of slot ranges */
        range.low = low; range.high = high;
        FUNC7(&master->slots, &range);
    }

    // Success
    return 0;
}