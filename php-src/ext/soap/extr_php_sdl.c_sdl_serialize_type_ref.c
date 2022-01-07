
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int type ;
typedef int smart_str ;
typedef scalar_t__ sdlTypePtr ;
typedef int HashTable ;


 int WSDL_CACHE_PUT_INT (int ,int *) ;
 int Z_LVAL_P (int *) ;
 int * zend_hash_str_find (int *,char*,int) ;

__attribute__((used)) static void sdl_serialize_type_ref(sdlTypePtr type, HashTable *tmp_types, smart_str *out) {
 if (type) {
  zval *type_num;
  if ((type_num = zend_hash_str_find(tmp_types, (char*)&type, sizeof(type))) != ((void*)0)) {
   WSDL_CACHE_PUT_INT(Z_LVAL_P(type_num), out);
  } else {
   WSDL_CACHE_PUT_INT(0, out);
  }
 } else {
  WSDL_CACHE_PUT_INT(0,out);
 }
}
