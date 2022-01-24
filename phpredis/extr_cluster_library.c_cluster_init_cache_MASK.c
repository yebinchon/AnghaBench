#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  redisClusterNode ;
struct TYPE_15__ {int /*<<< orphan*/ ** master; int /*<<< orphan*/  nodes; int /*<<< orphan*/  seeds; int /*<<< orphan*/  persistent; int /*<<< orphan*/  read_timeout; int /*<<< orphan*/  timeout; int /*<<< orphan*/  cache_key; } ;
typedef  TYPE_4__ redisCluster ;
struct TYPE_12__ {int port; int /*<<< orphan*/ * addr; } ;
struct TYPE_16__ {size_t slaves; size_t slots; TYPE_3__* slot; TYPE_2__* slave; TYPE_1__ host; } ;
typedef  TYPE_5__ redisCachedMaster ;
struct TYPE_17__ {int count; TYPE_5__* master; int /*<<< orphan*/  hash; } ;
typedef  TYPE_6__ redisCachedCluster ;
typedef  int /*<<< orphan*/  key ;
struct TYPE_14__ {size_t low; size_t high; } ;
struct TYPE_13__ {int /*<<< orphan*/  port; int /*<<< orphan*/ * addr; } ;
typedef  int /*<<< orphan*/  RedisSock ;

/* Variables and functions */
 int HOST_NAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_4__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int*,size_t) ; 
 int /*<<< orphan*/ * FUNC8 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC9 (char*,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ *) ; 

void FUNC11(redisCluster *c, redisCachedCluster *cc) {
    RedisSock *sock;
    redisClusterNode *mnode, *slave;
    redisCachedMaster *cm;
    char key[HOST_NAME_MAX];
    size_t keylen, i, j, s;
    int *map;

    /* Randomize seeds */
    map = FUNC6(sizeof(*map) * cc->count);
    for (i = 0; i < cc->count; i++) map[i] = i;
    FUNC7(map, cc->count);

    /* Iterate over masters */
    for (i = 0; i < cc->count; i++) {
        /* Attach cache key */
        c->cache_key = cc->hash;

        /* Grab the next master */
        cm = &cc->master[map[i]];

        /* Hash our host and port */
        keylen = FUNC9(key, sizeof(key), "%s:%u", FUNC1(cm->host.addr),
                          cm->host.port);

        /* Create socket */
        sock = FUNC8(FUNC1(cm->host.addr), FUNC0(cm->host.addr), cm->host.port,
                                 c->timeout, c->read_timeout, c->persistent,
                                 NULL, 0);

        /* Add to seed nodes */
        FUNC10(c->seeds, key, keylen, sock);

        /* Create master node */
        mnode = FUNC2(c, cm);

        /* Add our master */
        FUNC10(c->nodes, key, keylen, mnode);

        /* Attach any slaves */
        for (s = 0; s < cm->slaves; s++) {
            zend_string *host = cm->slave[s].addr;
            slave = FUNC4(c, FUNC1(host), FUNC0(host), cm->slave[s].port, 0, 1);
            FUNC3(mnode, slave);
        }

        /* Hook up direct slot access */
        for (j = 0; j < cm->slots; j++) {
            for (s = cm->slot[j].low; s <= cm->slot[j].high; s++) {
                c->master[s] = mnode;
            }
        }
    }

    FUNC5(map);
}