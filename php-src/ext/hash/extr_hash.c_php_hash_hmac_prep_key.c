
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t const block_size; int (* hash_final ) (unsigned char*,void*) ;int (* hash_update ) (void*,unsigned char const*,size_t const) ;int (* hash_init ) (void*) ;} ;
typedef TYPE_1__ php_hash_ops ;


 int memcpy (unsigned char*,unsigned char const*,size_t const) ;
 int memset (unsigned char*,int ,size_t const) ;
 int php_hash_string_xor_char (unsigned char*,unsigned char*,int,size_t const) ;
 int stub1 (void*) ;
 int stub2 (void*,unsigned char const*,size_t const) ;
 int stub3 (unsigned char*,void*) ;

__attribute__((used)) static inline void php_hash_hmac_prep_key(unsigned char *K, const php_hash_ops *ops, void *context, const unsigned char *key, const size_t key_len) {
 memset(K, 0, ops->block_size);
 if (key_len > ops->block_size) {

  ops->hash_init(context);
  ops->hash_update(context, key, key_len);
  ops->hash_final(K, context);
 } else {
  memcpy(K, key, key_len);
 }

 php_hash_string_xor_char(K, K, 0x36, ops->block_size);
}
