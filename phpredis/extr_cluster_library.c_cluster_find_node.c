
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int redisClusterNode ;
struct TYPE_3__ {int nodes; } ;
typedef TYPE_1__ redisCluster ;
typedef int key ;


 int snprintf (char*,int,char*,char const*,unsigned short) ;
 int * zend_hash_str_find_ptr (int ,char*,int) ;

__attribute__((used)) static redisClusterNode *cluster_find_node(redisCluster *c, const char *host,
                                           unsigned short port)
{
    int key_len;
    char key[1024];

    key_len = snprintf(key,sizeof(key),"%s:%d", host, port);

    return zend_hash_str_find_ptr(c->nodes, key, key_len);
}
