
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int smart_string ;
typedef int RedisSock ;


 int efree (char*) ;
 int redis_cmd_append_sstr (int *,char*,size_t) ;
 int redis_pack (int *,int *,char**,size_t*) ;

int redis_cmd_append_sstr_zval(smart_string *str, zval *z, RedisSock *redis_sock) {
    char *val;
    size_t vallen;
    int valfree, retval;

    valfree = redis_pack(redis_sock, z, &val, &vallen);
    retval = redis_cmd_append_sstr(str, val, vallen);
    if (valfree) efree(val);

    return retval;
}
