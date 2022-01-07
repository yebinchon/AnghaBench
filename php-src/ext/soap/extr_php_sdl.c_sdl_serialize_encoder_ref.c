
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int smart_str ;
typedef scalar_t__ encodePtr ;
typedef int enc ;
typedef int HashTable ;


 int WSDL_CACHE_PUT_INT (int ,int *) ;
 int Z_LVAL_P (int *) ;
 int * zend_hash_str_find (int *,char*,int) ;

__attribute__((used)) static void sdl_serialize_encoder_ref(encodePtr enc, HashTable *tmp_encoders, smart_str *out) {
 if (enc) {
  zval *encoder_num;
  if ((encoder_num = zend_hash_str_find(tmp_encoders, (char*)&enc, sizeof(enc))) != 0) {
   WSDL_CACHE_PUT_INT(Z_LVAL_P(encoder_num), out);
  } else {
   WSDL_CACHE_PUT_INT(0, out);
  }
 } else {
  WSDL_CACHE_PUT_INT(0, out);
 }
}
