
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_bool ;
struct TYPE_3__ {scalar_t__ num_entries; scalar_t__ max_num_entries; } ;
typedef TYPE_1__ zend_accel_hash ;



__attribute__((used)) static inline zend_bool zend_accel_hash_is_full(zend_accel_hash *accel_hash)
{
 if (accel_hash->num_entries == accel_hash->max_num_entries) {
  return 1;
 } else {
  return 0;
 }
}
