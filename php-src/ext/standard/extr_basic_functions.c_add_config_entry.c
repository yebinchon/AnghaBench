
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_ulong ;
typedef int zend_string ;


 int GC_FLAGS (int *) ;
 int GC_PERSISTENT ;
 scalar_t__ IS_ARRAY ;
 scalar_t__ IS_STRING ;
 int ZSTR_IS_INTERNED (int *) ;
 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int Z_ARRVAL_P (int *) ;
 int * Z_STR_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int add_assoc_str_ex (int *,int ,int ,int *) ;
 int add_config_entries (int ,int *) ;
 int add_index_str (int *,int ,int *) ;
 int array_init (int *) ;
 int zend_hash_update (int ,int *,int *) ;
 int zend_string_addref (int *) ;
 int * zend_string_init (int ,int ,int ) ;

__attribute__((used)) static void add_config_entry(zend_ulong h, zend_string *key, zval *entry, zval *retval)
{
 if (Z_TYPE_P(entry) == IS_STRING) {
  zend_string *str = Z_STR_P(entry);
  if (!ZSTR_IS_INTERNED(str)) {
   if (!(GC_FLAGS(str) & GC_PERSISTENT)) {
    zend_string_addref(str);
   } else {
    str = zend_string_init(ZSTR_VAL(str), ZSTR_LEN(str), 0);
   }
  }

  if (key) {
   add_assoc_str_ex(retval, ZSTR_VAL(key), ZSTR_LEN(key), str);
  } else {
   add_index_str(retval, h, str);
  }
 } else if (Z_TYPE_P(entry) == IS_ARRAY) {
  zval tmp;
  array_init(&tmp);
  add_config_entries(Z_ARRVAL_P(entry), &tmp);
  zend_hash_update(Z_ARRVAL_P(retval), key, &tmp);
 }
}
