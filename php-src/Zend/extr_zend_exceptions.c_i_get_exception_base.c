
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_class_entry ;


 int Z_OBJCE_P (int *) ;
 scalar_t__ instanceof_function (int ,int *) ;
 int * zend_ce_error ;
 int * zend_ce_exception ;

__attribute__((used)) static inline zend_class_entry *i_get_exception_base(zval *object)
{
 return instanceof_function(Z_OBJCE_P(object), zend_ce_exception) ? zend_ce_exception : zend_ce_error;
}
