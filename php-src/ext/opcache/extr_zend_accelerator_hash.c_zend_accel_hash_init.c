
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_accel_hash_entry ;
struct TYPE_3__ {size_t max_num_entries; void* hash_table; void* hash_entries; scalar_t__ num_direct_entries; scalar_t__ num_entries; } ;
typedef TYPE_1__ zend_accel_hash ;
typedef size_t uint32_t ;


 int ACCEL_LOG_FATAL ;
 int memset (void*,int ,int) ;
 size_t num_prime_numbers ;
 size_t* prime_numbers ;
 int zend_accel_error (int ,char*) ;
 void* zend_shared_alloc (int) ;

void zend_accel_hash_init(zend_accel_hash *accel_hash, uint32_t hash_size)
{
 uint32_t i;

 for (i=0; i<num_prime_numbers; i++) {
  if (hash_size <= prime_numbers[i]) {
   hash_size = prime_numbers[i];
   break;
  }
 }

 accel_hash->num_entries = 0;
 accel_hash->num_direct_entries = 0;
 accel_hash->max_num_entries = hash_size;


 accel_hash->hash_table = zend_shared_alloc(sizeof(zend_accel_hash_entry *)*accel_hash->max_num_entries);
 if (!accel_hash->hash_table) {
  zend_accel_error(ACCEL_LOG_FATAL, "Insufficient shared memory!");
  return;
 }


 accel_hash->hash_entries = zend_shared_alloc(sizeof(zend_accel_hash_entry)*accel_hash->max_num_entries);
 if (!accel_hash->hash_entries) {
  zend_accel_error(ACCEL_LOG_FATAL, "Insufficient shared memory!");
  return;
 }
 memset(accel_hash->hash_table, 0, sizeof(zend_accel_hash_entry *)*accel_hash->max_num_entries);
}
