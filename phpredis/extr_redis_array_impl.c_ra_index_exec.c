
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
struct TYPE_2__ {int function_table; } ;


 scalar_t__ IS_ARRAY ;
 int RETVAL_ZVAL (int *,int,int ) ;
 int ZVAL_STRINGL (int *,char*,int) ;
 int Z_ARRVAL (int ) ;
 scalar_t__ Z_TYPE (int ) ;
 int ra_call_user_function (int *,int *,int *,int *,int ,int *) ;
 TYPE_1__* redis_ce ;
 int * zend_hash_index_find (int ,int ) ;
 int zval_dtor (int *) ;

void
ra_index_exec(zval *z_redis, zval *return_value, int keep_all) {

    zval z_fun_exec, z_ret, *zp_tmp;


    ZVAL_STRINGL(&z_fun_exec, "EXEC", 4);
    ra_call_user_function(&redis_ce->function_table, z_redis, &z_fun_exec, &z_ret, 0, ((void*)0));
    zval_dtor(&z_fun_exec);


    if(Z_TYPE(z_ret) == IS_ARRAY) {
        if(return_value) {
                if(keep_all) {
                    zp_tmp = &z_ret;
                    RETVAL_ZVAL(zp_tmp, 1, 0);
                } else if ((zp_tmp = zend_hash_index_find(Z_ARRVAL(z_ret), 0)) != ((void*)0)) {
                    RETVAL_ZVAL(zp_tmp, 1, 0);
                }
        }
    }
    zval_dtor(&z_ret);



}
