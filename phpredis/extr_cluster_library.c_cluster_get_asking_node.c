
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int redisClusterNode ;
struct TYPE_4__ {char* redir_host; int redir_port; int redir_slot; int redir_host_len; int nodes; } ;
typedef TYPE_1__ redisCluster ;
typedef int key ;


 int * cluster_node_create (TYPE_1__*,char*,int ,int,int ,int ) ;
 int snprintf (char*,int,char*,char*,int) ;
 int * zend_hash_str_find_ptr (int ,char*,int) ;

__attribute__((used)) static redisClusterNode *cluster_get_asking_node(redisCluster *c) {
    redisClusterNode *pNode;
    char key[1024];
    int key_len;


    key_len = snprintf(key, sizeof(key), "%s:%u", c->redir_host, c->redir_port);


    if ((pNode = zend_hash_str_find_ptr(c->nodes, key, key_len)) != ((void*)0)) {
        return pNode;
    }


    pNode = cluster_node_create(c, c->redir_host, c->redir_host_len,
        c->redir_port, c->redir_slot, 0);


   return pNode;
}
