
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
struct TYPE_2__ {int function_table; } ;


 int ZVAL_STRINGL (int *,char*,int) ;
 int ra_call_user_function (int *,int *,int *,int *,int ,int *) ;
 TYPE_1__* redis_ce ;
 int zval_dtor (int *) ;

void
ra_index_unwatch(zval *z_redis, zval *return_value) {

    zval z_fun_unwatch, z_ret;


    ZVAL_STRINGL(&z_fun_unwatch, "UNWATCH", 7);
    ra_call_user_function(&redis_ce->function_table, z_redis, &z_fun_unwatch, &z_ret, 0, ((void*)0));

    zval_dtor(&z_fun_unwatch);
    zval_dtor(&z_ret);
}
