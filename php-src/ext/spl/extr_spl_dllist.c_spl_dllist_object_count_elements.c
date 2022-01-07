
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object ;
typedef int zend_long ;
struct TYPE_4__ {int ce; } ;
struct TYPE_5__ {int llist; scalar_t__ fptr_count; TYPE_1__ std; } ;
typedef TYPE_2__ spl_dllist_object ;


 int FAILURE ;
 int SUCCESS ;
 int Z_ISUNDEF (int ) ;
 TYPE_2__* spl_dllist_from_obj (int *) ;
 int spl_ptr_llist_count (int ) ;
 int zend_call_method_with_0_params (int *,int ,scalar_t__*,char*,int *) ;
 int zval_get_long (int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static int spl_dllist_object_count_elements(zend_object *object, zend_long *count)
{
 spl_dllist_object *intern = spl_dllist_from_obj(object);

 if (intern->fptr_count) {
  zval rv;
  zend_call_method_with_0_params(object, intern->std.ce, &intern->fptr_count, "count", &rv);
  if (!Z_ISUNDEF(rv)) {
   *count = zval_get_long(&rv);
   zval_ptr_dtor(&rv);
   return SUCCESS;
  }
  *count = 0;
  return FAILURE;
 }

 *count = spl_ptr_llist_count(intern->llist);
 return SUCCESS;
}
