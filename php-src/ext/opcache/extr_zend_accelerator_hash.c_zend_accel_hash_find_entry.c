
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef int zend_accel_hash_entry ;
typedef int zend_accel_hash ;


 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 scalar_t__ zend_accel_hash_find_ex (int *,int ,int ,int ,int ) ;
 int zend_string_hash_val (int *) ;

zend_accel_hash_entry* zend_accel_hash_find_entry(zend_accel_hash *accel_hash, zend_string *key)
{
 return (zend_accel_hash_entry *)zend_accel_hash_find_ex(
  accel_hash,
  ZSTR_VAL(key),
  ZSTR_LEN(key),
  zend_string_hash_val(key),
  0);
}
