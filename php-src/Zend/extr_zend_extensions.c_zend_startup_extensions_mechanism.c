
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_extension ;


 int SUCCESS ;
 scalar_t__ last_resource_number ;
 scalar_t__ zend_extension_dtor ;
 int zend_extensions ;
 int zend_llist_init (int *,int,void (*) (void*),int) ;
 scalar_t__ zend_op_array_extension_handles ;

int zend_startup_extensions_mechanism()
{

 zend_llist_init(&zend_extensions, sizeof(zend_extension), (void (*)(void *)) zend_extension_dtor, 1);
 zend_op_array_extension_handles = 0;
 last_resource_number = 0;
 return SUCCESS;
}
