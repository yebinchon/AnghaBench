
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SUCCESS ;
 scalar_t__ zend_extension_startup ;
 int zend_extensions ;
 int zend_llist_apply_with_del (int *,int (*) (void*)) ;

int zend_startup_extensions()
{
 zend_llist_apply_with_del(&zend_extensions, (int (*)(void *)) zend_extension_startup);
 return SUCCESS;
}
