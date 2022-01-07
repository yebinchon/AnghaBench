
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
struct TYPE_2__ {int function_table; } ;


 int ZVAL_LONG (int *,long) ;
 int ZVAL_STRINGL (int *,char*,int) ;
 int ra_call_user_function (int *,int *,int *,int *,int,int *) ;
 TYPE_1__* redis_ce ;
 int zval_dtor (int *) ;

void
ra_index_multi(zval *z_redis, long multi_value) {

    zval z_fun_multi, z_ret;
    zval z_args[1];


    ZVAL_STRINGL(&z_fun_multi, "MULTI", 5);
    ZVAL_LONG(&z_args[0], multi_value);
    ra_call_user_function(&redis_ce->function_table, z_redis, &z_fun_multi, &z_ret, 1, z_args);
    zval_dtor(&z_fun_multi);
    zval_dtor(&z_ret);
}
