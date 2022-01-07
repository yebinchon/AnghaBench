
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {short low; short high; } ;
typedef TYPE_1__ redisSlotRange ;
struct TYPE_17__ {int slots; } ;
typedef TYPE_2__ redisClusterNode ;
struct TYPE_18__ {TYPE_2__** master; int nodes; } ;
typedef TYPE_3__ redisCluster ;
typedef int key ;
struct TYPE_19__ {int elements; char* str; int len; scalar_t__ integer; struct TYPE_19__** element; } ;
typedef TYPE_4__ clusterReply ;


 int VALIDATE_SLOTS_INNER (TYPE_4__*) ;
 int VALIDATE_SLOTS_OUTER (TYPE_4__*) ;
 int cluster_node_add_slave (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* cluster_node_create (TYPE_3__*,char*,int,unsigned short,short,int) ;
 int snprintf (char*,int,char*,char*,unsigned short) ;
 TYPE_2__* zend_hash_str_find_ptr (int ,char*,int) ;
 int zend_hash_str_update_ptr (int ,char*,int,TYPE_2__*) ;
 int zend_llist_add_element (int *,TYPE_1__*) ;

__attribute__((used)) static int cluster_map_slots(redisCluster *c, clusterReply *r) {
    redisClusterNode *pnode, *master, *slave;
    redisSlotRange range;
    int i,j, hlen, klen;
    short low, high;
    clusterReply *r2, *r3;
    unsigned short port;
    char *host, key[1024];

    for (i = 0; i < r->elements; i++) {

        r2 = r->element[i];


        if (!VALIDATE_SLOTS_OUTER(r2) || !VALIDATE_SLOTS_INNER(r2->element[2])) {
            return -1;
        }


        r3 = r2->element[2];


        low = (unsigned short)r2->element[0]->integer;
        high = (unsigned short)r2->element[1]->integer;
        host = r3->element[0]->str;
        hlen = r3->element[0]->len;
        port = (unsigned short)r3->element[1]->integer;


        klen = snprintf(key, sizeof(key), "%s:%d", host, port);
        if ((pnode = zend_hash_str_find_ptr(c->nodes, key, klen)) == ((void*)0)) {
            master = cluster_node_create(c, host, hlen, port, low, 0);
            zend_hash_str_update_ptr(c->nodes, key, klen, master);
        } else {
            master = pnode;
        }


        for (j = 3; j< r2->elements; j++) {
            r3 = r2->element[j];
            if (!VALIDATE_SLOTS_INNER(r3)) {
                return -1;
            }


            if (r3->element[0]->len == 0) continue;


            slave = cluster_node_create(c, r3->element[0]->str,
                (int)r3->element[0]->len,
                (unsigned short)r3->element[1]->integer, low, 1);
            cluster_node_add_slave(master, slave);
        }


        for (j = low; j<= high; j++) {
            c->master[j] = master;
        }


        range.low = low; range.high = high;
        zend_llist_add_element(&master->slots, &range);
    }


    return 0;
}
