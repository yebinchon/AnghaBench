
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int zend_bool ;
struct TYPE_2__ {int function_table; } ;


 scalar_t__ IS_ARRAY ;
 int ZVAL_STRINGL (int *,char const*,int) ;
 scalar_t__ Z_TYPE (int ) ;
 int ra_call_user_function (int *,int *,int *,int *,int,int *) ;
 int ra_expire_key (char const*,int,int *,long) ;
 TYPE_1__* redis_ce ;
 int zval_dtor (int *) ;

__attribute__((used)) static zend_bool
ra_move_hash(const char *key, int key_len, zval *z_from, zval *z_to, long ttl) {
    zval z_fun_hgetall, z_fun_hmset, z_ret_dest, z_args[2];


    ZVAL_STRINGL(&z_args[0], key, key_len);
    ZVAL_STRINGL(&z_fun_hgetall, "HGETALL", 7);
    ra_call_user_function(&redis_ce->function_table, z_from, &z_fun_hgetall, &z_args[1], 1, z_args);
    zval_dtor(&z_fun_hgetall);

    if (Z_TYPE(z_args[1]) != IS_ARRAY) {

        zval_dtor(&z_args[1]);
        zval_dtor(&z_args[0]);
        return 0;
    }


    ZVAL_STRINGL(&z_fun_hmset, "HMSET", 5);
    ra_call_user_function(&redis_ce->function_table, z_to, &z_fun_hmset, &z_ret_dest, 2, z_args);
    zval_dtor(&z_fun_hmset);
    zval_dtor(&z_ret_dest);


    ra_expire_key(key, key_len, z_to, ttl);


    zval_dtor(&z_args[1]);
    zval_dtor(&z_args[0]);

    return 1;
}
