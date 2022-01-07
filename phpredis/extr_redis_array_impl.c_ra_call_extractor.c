
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_3__ {int z_fun; } ;
typedef TYPE_1__ RedisArray ;


 int EG (int ) ;
 int E_ERROR ;
 scalar_t__ IS_STRING ;
 int ZVAL_NULL (int *) ;
 int ZVAL_STRINGL (int *,char const*,int) ;
 scalar_t__ Z_TYPE (int ) ;
 int function_table ;
 int php_error_docref (int *,int ,char*) ;
 int ra_call_user_function (int ,int *,int *,int *,int,int *) ;
 int zend_is_callable_ex (int *,int *,int ,int *,int *,int *) ;
 int zval_dtor (int *) ;
 int * zval_get_string (int *) ;

zend_string *
ra_call_extractor(RedisArray *ra, const char *key, int key_len)
{
    zend_string *out = ((void*)0);
    zval z_ret, z_argv;


    if (!zend_is_callable_ex(&ra->z_fun, ((void*)0), 0, ((void*)0), ((void*)0), ((void*)0))) {
        php_error_docref(((void*)0), E_ERROR, "Could not call extractor function");
        return ((void*)0);
    }

    ZVAL_NULL(&z_ret);

    ZVAL_STRINGL(&z_argv, key, key_len);
    ra_call_user_function(EG(function_table), ((void*)0), &ra->z_fun, &z_ret, 1, &z_argv);

    if (Z_TYPE(z_ret) == IS_STRING) {
        out = zval_get_string(&z_ret);
    }

    zval_dtor(&z_argv);
    zval_dtor(&z_ret);
    return out;
}
