
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int zend_bool ;
struct TYPE_2__ {int function_table; } ;


 scalar_t__ IS_STRING ;
 int ZVAL_LONG (int *,long) ;
 int ZVAL_STRINGL (int *,char const*,int) ;
 int Z_STRLEN (int ) ;
 char* Z_STRVAL (int ) ;
 scalar_t__ Z_TYPE (int ) ;
 int ra_call_user_function (int *,int *,int *,int *,int,int *) ;
 TYPE_1__* redis_ce ;
 int zval_dtor (int *) ;

__attribute__((used)) static zend_bool
ra_move_string(const char *key, int key_len, zval *z_from, zval *z_to, long ttl) {

    zval z_fun_get, z_fun_set, z_ret, z_args[3];


    ZVAL_STRINGL(&z_fun_get, "GET", 3);
    ZVAL_STRINGL(&z_args[0], key, key_len);
    ra_call_user_function(&redis_ce->function_table, z_from, &z_fun_get, &z_ret, 1, z_args);
    zval_dtor(&z_fun_get);

    if(Z_TYPE(z_ret) != IS_STRING) {

        zval_dtor(&z_args[0]);
        zval_dtor(&z_ret);
        return 0;
    }


    if (ttl > 0) {
        ZVAL_STRINGL(&z_fun_set, "SETEX", 5);
        ZVAL_LONG(&z_args[1], ttl);
        ZVAL_STRINGL(&z_args[2], Z_STRVAL(z_ret), Z_STRLEN(z_ret));
        zval_dtor(&z_ret);
        ra_call_user_function(&redis_ce->function_table, z_to, &z_fun_set, &z_ret, 3, z_args);

        zval_dtor(&z_args[2]);
    } else {
        ZVAL_STRINGL(&z_fun_set, "SET", 3);
        ZVAL_STRINGL(&z_args[1], Z_STRVAL(z_ret), Z_STRLEN(z_ret));
        zval_dtor(&z_ret);
        ra_call_user_function(&redis_ce->function_table, z_to, &z_fun_set, &z_ret, 2, z_args);

        zval_dtor(&z_args[1]);
    }
    zval_dtor(&z_fun_set);
    zval_dtor(&z_args[0]);
    zval_dtor(&z_ret);

    return 1;
}
