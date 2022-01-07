
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int llist_apply_func_t ;


 scalar_t__ zend_extension_shutdown ;
 int zend_extensions ;
 int zend_llist_apply (int *,int ) ;
 int zend_llist_destroy (int *) ;

void zend_shutdown_extensions(void)
{
 zend_llist_apply(&zend_extensions, (llist_apply_func_t) zend_extension_shutdown);
 zend_llist_destroy(&zend_extensions);
}
