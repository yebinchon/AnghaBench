
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int smart_string ;
typedef int RedisSock ;


 short cluster_hash_key (char*,size_t) ;
 int efree (char*) ;
 int redis_cmd_append_sstr (int *,char*,size_t) ;
 int redis_key_prefix (int *,char**,size_t*) ;

int redis_cmd_append_sstr_key(smart_string *str, char *key, size_t len, RedisSock *redis_sock, short *slot) {
    int valfree, retval;

    valfree = redis_key_prefix(redis_sock, &key, &len);
    if (slot) *slot = cluster_hash_key(key, len);
    retval = redis_cmd_append_sstr(str, key, len);
    if (valfree) efree(key);

    return retval;
}
