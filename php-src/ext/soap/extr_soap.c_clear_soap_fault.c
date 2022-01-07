
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 scalar_t__ IS_OBJECT ;
 int Z_OBJPROP_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int zend_hash_str_del (int ,char*,int) ;

__attribute__((used)) static void clear_soap_fault(zval *obj)
{
 if (obj != ((void*)0) && Z_TYPE_P(obj) == IS_OBJECT) {
  zend_hash_str_del(Z_OBJPROP_P(obj), "__soap_fault", sizeof("__soap_fault")-1);
 }
}
