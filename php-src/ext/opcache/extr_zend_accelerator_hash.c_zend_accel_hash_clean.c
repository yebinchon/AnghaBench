
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_accel_hash_entry ;
struct TYPE_3__ {int max_num_entries; int hash_table; scalar_t__ num_direct_entries; scalar_t__ num_entries; } ;
typedef TYPE_1__ zend_accel_hash ;


 int memset (int ,int ,int) ;

void zend_accel_hash_clean(zend_accel_hash *accel_hash)
{
 accel_hash->num_entries = 0;
 accel_hash->num_direct_entries = 0;
 memset(accel_hash->hash_table, 0, sizeof(zend_accel_hash_entry *)*accel_hash->max_num_entries);
}
