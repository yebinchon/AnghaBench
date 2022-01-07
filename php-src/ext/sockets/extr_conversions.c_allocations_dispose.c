
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_llist ;


 int efree (int *) ;
 int zend_llist_destroy (int *) ;

void allocations_dispose(zend_llist **allocations)
{
 zend_llist_destroy(*allocations);
 efree(*allocations);
 *allocations = ((void*)0);
}
