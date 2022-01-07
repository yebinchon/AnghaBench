
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * prefix; } ;
typedef TYPE_1__ RedisSock ;


 int ZSTR_LEN (int *) ;
 char* ZSTR_VAL (int *) ;
 char* ecalloc (int,int) ;
 int memcpy (char*,char*,size_t) ;

int
redis_key_prefix(RedisSock *redis_sock, char **key, size_t *key_len) {
    int ret_len;
    char *ret;

    if (redis_sock->prefix == ((void*)0)) {
        return 0;
    }

    ret_len = ZSTR_LEN(redis_sock->prefix) + *key_len;
    ret = ecalloc(1 + ret_len, 1);
    memcpy(ret, ZSTR_VAL(redis_sock->prefix), ZSTR_LEN(redis_sock->prefix));
    memcpy(ret + ZSTR_LEN(redis_sock->prefix), *key, *key_len);

    *key = ret;
    *key_len = ret_len;
    return 1;
}
