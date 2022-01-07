
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ce_flags; } ;
typedef TYPE_1__ zend_class_entry ;
typedef int zend_bool ;


 int ZEND_ACC_LINKED ;
 int instanceof_function (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static zend_bool safe_instanceof(zend_class_entry *ce1, zend_class_entry *ce2) {
 if (ce1 == ce2) {
  return 1;
 }
 if (!(ce1->ce_flags & ZEND_ACC_LINKED)) {

  return 0;
 }
 return instanceof_function(ce1, ce2);
}
