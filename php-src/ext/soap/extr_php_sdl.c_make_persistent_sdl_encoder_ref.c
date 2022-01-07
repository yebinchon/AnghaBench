
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ encodePtr ;
typedef int HashTable ;


 scalar_t__ defaultEncoding ;
 scalar_t__ numDefaultEncodings ;
 int zend_hash_next_index_insert_ptr (int *,scalar_t__*) ;
 scalar_t__ zend_hash_str_find_ptr (int *,char*,int) ;

__attribute__((used)) static void make_persistent_sdl_encoder_ref(encodePtr *enc, HashTable *ptr_map, HashTable *bp_encoders)
{
 encodePtr tmp;


 if ((*enc) >= defaultEncoding && (*enc) < defaultEncoding + numDefaultEncodings) {
  return;
 }

 if ((tmp = zend_hash_str_find_ptr(ptr_map, (char *)enc, sizeof(encodePtr))) != ((void*)0)) {
  *enc = tmp;
 } else {
  zend_hash_next_index_insert_ptr(bp_encoders, enc);
 }
}
