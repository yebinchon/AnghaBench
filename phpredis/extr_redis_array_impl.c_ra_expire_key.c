
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int zend_bool ;
struct TYPE_2__ {int function_table; } ;


 int ZVAL_LONG (int *,long) ;
 int ZVAL_STRINGL (int *,char const*,int) ;
 int ra_call_user_function (int *,int *,int *,int *,int,int *) ;
 TYPE_1__* redis_ce ;
 int zval_dtor (int *) ;

__attribute__((used)) static zend_bool
ra_expire_key(const char *key, int key_len, zval *z_to, long ttl) {

    zval z_fun_expire, z_ret, z_args[2];

    if (ttl > 0)
    {

        ZVAL_STRINGL(&z_fun_expire, "EXPIRE", 6);
        ZVAL_STRINGL(&z_args[0], key, key_len);
        ZVAL_LONG(&z_args[1], ttl);
        ra_call_user_function(&redis_ce->function_table, z_to, &z_fun_expire, &z_ret, 2, z_args);
        zval_dtor(&z_fun_expire);
        zval_dtor(&z_args[0]);
        zval_dtor(&z_ret);
    }

    return 1;
}
