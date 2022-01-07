
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int zend_bool ;
struct TYPE_2__ {int function_table; } ;


 int MULTI ;
 int ZVAL_STRINGL (int *,char const*,int) ;
 int ra_call_user_function (int *,int *,int *,int *,int,int *) ;
 int ra_index_exec (int *,int *,int ) ;
 int ra_index_multi (int *,int ) ;
 int ra_remove_from_index (int *,char const*,int) ;
 TYPE_1__* redis_ce ;
 int zval_dtor (int *) ;

__attribute__((used)) static zend_bool
ra_del_key(const char *key, int key_len, zval *z_from) {

    zval z_fun_del, z_ret, z_args[1];


    ra_index_multi(z_from, MULTI);


    ZVAL_STRINGL(&z_fun_del, "DEL", 3);
    ZVAL_STRINGL(&z_args[0], key, key_len);
    ra_call_user_function(&redis_ce->function_table, z_from, &z_fun_del, &z_ret, 1, z_args);
    zval_dtor(&z_fun_del);
    zval_dtor(&z_args[0]);
    zval_dtor(&z_ret);


    ra_remove_from_index(z_from, key, key_len);


    ra_index_exec(z_from, ((void*)0), 0);

    return 1;
}
