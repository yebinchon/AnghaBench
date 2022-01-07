
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zend_object ;
typedef int zend_class_entry ;
struct TYPE_2__ {int * (* create_object ) (int *) ;} ;


 int sodium_remove_param_values_from_backtrace (int *) ;
 int * stub1 (int *) ;
 TYPE_1__* zend_ce_exception ;

__attribute__((used)) static zend_object *sodium_exception_create_object(zend_class_entry *ce) {
 zend_object *obj = zend_ce_exception->create_object(ce);
 sodium_remove_param_values_from_backtrace(obj);
 return obj;
}
