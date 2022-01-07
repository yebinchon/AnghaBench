
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
typedef int zend_fcall_info_cache ;
struct TYPE_4__ {int param_count; scalar_t__ no_separation; int * retval; int * params; } ;
typedef TYPE_1__ zend_fcall_info ;


 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int ZVAL_LONG (int *,long) ;
 int ZVAL_NULL (int *) ;
 int ZVAL_STRINGL (int *,int ,int ) ;
 int zend_call_function (TYPE_1__*,int *) ;
 int zval_dtor (int *) ;

__attribute__((used)) static void
zval_rehash_callback(zend_fcall_info *z_cb, zend_fcall_info_cache *z_cb_cache,
    zend_string *hostname, long count) {

    zval zv, *z_ret = &zv;

    ZVAL_NULL(z_ret);

    zval z_args[2];

    ZVAL_STRINGL(&z_args[0], ZSTR_VAL(hostname), ZSTR_LEN(hostname));
    ZVAL_LONG(&z_args[1], count);

    z_cb->params = z_args;
    z_cb->retval = z_ret;

    z_cb->no_separation = 0;
    z_cb->param_count = 2;


    zend_call_function(z_cb, z_cb_cache);


    zval_dtor(&z_args[0]);
    zval_dtor(z_ret);
}
