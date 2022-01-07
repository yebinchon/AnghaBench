
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 scalar_t__ IS_LONG ;
 int Z_ARRVAL_P (int *) ;
 scalar_t__ is_numeric_string (char*,int,int *,int *,int ) ;
 int strlen (char const*) ;
 long strtol (char const*,int *,int ) ;
 int zend_hash_index_update (int ,long,int *) ;
 int zend_hash_next_index_insert (int ,int *) ;
 int zend_hash_str_update (int ,char*,int,int *) ;

__attribute__((used)) static void add_zval(zval* list, const char* id, zval* val)
{
 if (list && val) {
  if (id) {
   int id_len = strlen(id);
   if (!(id_len > 1 && id[0] == '0') && is_numeric_string((char *)id, id_len, ((void*)0), ((void*)0), 0) == IS_LONG) {
    long index = strtol(id, ((void*)0), 0);
    zend_hash_index_update(Z_ARRVAL_P(list), index, val);
   } else {
    zend_hash_str_update(Z_ARRVAL_P(list), (char*)id, strlen(id), val);
   }
  } else {
   zend_hash_next_index_insert(Z_ARRVAL_P(list), val);
  }
 }
}
