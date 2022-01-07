
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {size_t slot; scalar_t__ slave; } ;
typedef TYPE_1__ redisClusterNode ;
struct TYPE_11__ {size_t redir_slot; char* redir_host; int redir_port; TYPE_1__** master; int redir_host_len; int nodes; } ;
typedef TYPE_2__ redisCluster ;
typedef int key ;


 int CLUSTER_REDIR_CMP (TYPE_2__*) ;
 TYPE_1__* cluster_find_node (TYPE_2__*,char*,int) ;
 TYPE_1__* cluster_node_create (TYPE_2__*,char*,int ,int,size_t,int ) ;
 size_t snprintf (char*,int,char*,char*,int) ;
 int zend_hash_str_update_ptr (int ,char*,size_t,TYPE_1__*) ;

__attribute__((used)) static void cluster_update_slot(redisCluster *c) {
    redisClusterNode *node;
    char key[1024];
    size_t klen;


    if (c->master[c->redir_slot]) {

        if (!CLUSTER_REDIR_CMP(c)) {
            return;
        }


        node = cluster_find_node(c, c->redir_host, c->redir_port);

        if (node) {

            c->master[c->redir_slot] = node;
        } else {

            node = cluster_node_create(c, c->redir_host, c->redir_host_len,
                c->redir_port, c->redir_slot, 0);


            klen = snprintf(key, sizeof(key), "%s:%d", c->redir_host, c->redir_port);
            zend_hash_str_update_ptr(c->nodes, key, klen, node);


            c->master[c->redir_slot] = node;
        }
    } else {

        node = cluster_find_node(c, c->redir_host, c->redir_port);
        if (!node) {
            node = cluster_node_create(c, c->redir_host, c->redir_host_len,
                c->redir_port, c->redir_slot, 0);
        }


        c->master[c->redir_slot] = node;
    }


    node->slot = c->redir_slot;



    node->slave = 0;
}
