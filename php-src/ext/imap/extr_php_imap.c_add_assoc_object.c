
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int HashTable ;


 scalar_t__ IS_OBJECT ;
 int * Z_ARRVAL_P (int *) ;
 int * Z_OBJPROP_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int strlen (char*) ;
 int * zend_hash_str_update (int *,char*,int ,int *) ;

__attribute__((used)) static zval *add_assoc_object(zval *arg, char *key, zval *tmp)
{
 HashTable *symtable;

 if (Z_TYPE_P(arg) == IS_OBJECT) {
  symtable = Z_OBJPROP_P(arg);
 } else {
  symtable = Z_ARRVAL_P(arg);
 }
 return zend_hash_str_update(symtable, key, strlen(key), tmp);
}
