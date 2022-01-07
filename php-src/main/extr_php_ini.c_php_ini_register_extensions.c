
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int functions; int engine; } ;


 TYPE_1__ extension_lists ;
 int php_load_php_extension_cb ;
 int php_load_zend_extension_cb ;
 int zend_llist_apply (int *,int ) ;
 int zend_llist_destroy (int *) ;

void php_ini_register_extensions(void)
{
 zend_llist_apply(&extension_lists.engine, php_load_zend_extension_cb);
 zend_llist_apply(&extension_lists.functions, php_load_php_extension_cb);

 zend_llist_destroy(&extension_lists.engine);
 zend_llist_destroy(&extension_lists.functions);
}
