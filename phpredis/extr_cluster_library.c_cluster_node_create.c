
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int redisSlotRange ;
struct TYPE_7__ {unsigned short slot; short slave; TYPE_3__* sock; int slots; int * slaves; } ;
typedef TYPE_1__ redisClusterNode ;
struct TYPE_8__ {scalar_t__ auth; int persistent; int read_timeout; int timeout; } ;
typedef TYPE_2__ redisCluster ;
struct TYPE_9__ {int auth; } ;


 TYPE_1__* emalloc (int) ;
 TYPE_3__* redis_sock_create (char*,size_t,unsigned short,int ,int ,int ,int *,int ) ;
 int zend_llist_init (int *,int,int *,int ) ;
 int zend_string_copy (scalar_t__) ;

__attribute__((used)) static redisClusterNode*
cluster_node_create(redisCluster *c, char *host, size_t host_len,
                    unsigned short port, unsigned short slot, short slave)
{
    redisClusterNode *node = emalloc(sizeof(redisClusterNode));


    node->slot = slot;
    node->slave = slave;
    node->slaves = ((void*)0);


    zend_llist_init(&node->slots, sizeof(redisSlotRange), ((void*)0), 0);


    node->sock = redis_sock_create(host, host_len, port, c->timeout,
        c->read_timeout, c->persistent, ((void*)0), 0);

    if (c->auth) {
        node->sock->auth = zend_string_copy(c->auth);
    }

    return node;
}
