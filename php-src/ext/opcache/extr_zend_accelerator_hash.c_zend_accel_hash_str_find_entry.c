
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_accel_hash_entry ;
typedef int zend_accel_hash ;
typedef int uint32_t ;


 scalar_t__ zend_accel_hash_find_ex (int *,char const*,int ,int ,int ) ;
 int zend_inline_hash_func (char const*,int ) ;

zend_accel_hash_entry* zend_accel_hash_str_find_entry(zend_accel_hash *accel_hash, const char *key, uint32_t key_length)
{
 return (zend_accel_hash_entry *)zend_accel_hash_find_ex(
  accel_hash,
  key,
  key_length,
  zend_inline_hash_func(key, key_length),
  0);
}
