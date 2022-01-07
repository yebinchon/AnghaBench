
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 scalar_t__ IS_ARRAY ;
 scalar_t__ IS_OBJECT ;
 int Z_ARRVAL_P (int *) ;
 int Z_OBJCE_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int strlen (char*) ;
 int zend_hash_str_del (int ,char*,int ) ;
 int zend_unset_property (int ,int *,char*,int ) ;

__attribute__((used)) static void unset_zval_property(zval* object, char* name)
{
 if (Z_TYPE_P(object) == IS_OBJECT) {
  zend_unset_property(Z_OBJCE_P(object), object, name, strlen(name));
 } else if (Z_TYPE_P(object) == IS_ARRAY) {
  zend_hash_str_del(Z_ARRVAL_P(object), name, strlen(name));
 }
}
