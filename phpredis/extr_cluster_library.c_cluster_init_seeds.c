
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {int seeds; scalar_t__ auth; int persistent; int read_timeout; int timeout; } ;
typedef TYPE_1__ redisCluster ;
typedef int key ;
struct TYPE_7__ {int port; int host; int auth; } ;
typedef TYPE_2__ RedisSock ;
typedef int HashTable ;


 int FAILURE ;
 scalar_t__ IS_STRING ;
 int SUCCESS ;
 char* ZSTR_VAL (int ) ;
 int ZVAL_DEREF (int *) ;
 char* Z_STRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 scalar_t__ atoi (char*) ;
 int ** cluster_shuffle_seeds (int *,int*) ;
 int efree (int **) ;
 TYPE_2__* redis_sock_create (char*,int,unsigned short,int ,int ,int ,int *,int ) ;
 int snprintf (char*,int,char*,char*,int) ;
 char* strrchr (char*,char) ;
 scalar_t__ zend_hash_num_elements (int ) ;
 int zend_hash_str_update_ptr (int ,char*,int,TYPE_2__*) ;
 int zend_string_copy (scalar_t__) ;

int
cluster_init_seeds(redisCluster *cluster, HashTable *ht_seeds) {
    RedisSock *redis_sock;
    char *str, *psep, key[1024];
    int key_len, count, i;
    zval **z_seeds, *z_seed;


    z_seeds = cluster_shuffle_seeds(ht_seeds, &count);


    for (i = 0; i < count; i++) {
        if ((z_seed = z_seeds[i]) == ((void*)0)) continue;

        ZVAL_DEREF(z_seed);


        if (Z_TYPE_P(z_seed) != IS_STRING) continue;


        str = Z_STRVAL_P(z_seed);



        if ((psep = strrchr(str, ':')) == ((void*)0))
            continue;


        redis_sock = redis_sock_create(str, psep-str,
            (unsigned short)atoi(psep+1), cluster->timeout,
            cluster->read_timeout, cluster->persistent, ((void*)0), 0);


        if (cluster->auth) {
            redis_sock->auth = zend_string_copy(cluster->auth);
        }


        key_len = snprintf(key, sizeof(key), "%s:%u", ZSTR_VAL(redis_sock->host),
            redis_sock->port);


        zend_hash_str_update_ptr(cluster->seeds, key, key_len, redis_sock);
    }

    efree(z_seeds);


    return zend_hash_num_elements(cluster->seeds) > 0 ? SUCCESS : FAILURE;
}
