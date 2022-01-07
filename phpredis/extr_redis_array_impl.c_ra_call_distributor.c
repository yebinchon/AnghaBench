
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {int z_dist; } ;
typedef TYPE_1__ RedisArray ;


 int EG (int ) ;
 int E_ERROR ;
 scalar_t__ IS_LONG ;
 int ZVAL_NULL (int *) ;
 int ZVAL_STRINGL (int *,char const*,int) ;
 int Z_LVAL (int ) ;
 scalar_t__ Z_TYPE (int ) ;
 int function_table ;
 int php_error_docref (int *,int ,char*) ;
 int ra_call_user_function (int ,int *,int *,int *,int,int *) ;
 int zend_is_callable_ex (int *,int *,int ,int *,int *,int *) ;
 int zval_dtor (int *) ;

int
ra_call_distributor(RedisArray *ra, const char *key, int key_len)
{
    int ret;
    zval z_ret, z_argv;


    if (!zend_is_callable_ex(&ra->z_dist, ((void*)0), 0, ((void*)0), ((void*)0), ((void*)0))) {
        php_error_docref(((void*)0), E_ERROR, "Could not call distributor function");
        return -1;
    }

    ZVAL_NULL(&z_ret);

    ZVAL_STRINGL(&z_argv, key, key_len);
    ra_call_user_function(EG(function_table), ((void*)0), &ra->z_dist, &z_ret, 1, &z_argv);

    ret = (Z_TYPE(z_ret) == IS_LONG) ? Z_LVAL(z_ret) : -1;

    zval_dtor(&z_argv);
    zval_dtor(&z_ret);
    return ret;
}
