
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ int32_t ;
struct TYPE_5__ {int nNumUsed; scalar_t__ nTableMask; } ;
typedef TYPE_1__ HashTable ;
typedef int Bucket ;


 int ADD_SIZE (int) ;
 int HASH_FLAG_PACKED ;
 int HASH_FLAG_UNINITIALIZED ;
 int HT_FLAGS (TYPE_1__*) ;
 int HT_MIN_SIZE ;
 int HT_USED_SIZE (TYPE_1__*) ;

__attribute__((used)) static void zend_hash_persist_calc(HashTable *ht)
{
 if ((HT_FLAGS(ht) & HASH_FLAG_UNINITIALIZED) || ht->nNumUsed == 0) {
  return;
 }

 if (!(HT_FLAGS(ht) & HASH_FLAG_PACKED) && ht->nNumUsed > HT_MIN_SIZE && ht->nNumUsed < (uint32_t)(-(int32_t)ht->nTableMask) / 4) {

  uint32_t hash_size;

  hash_size = (uint32_t)(-(int32_t)ht->nTableMask);
  while (hash_size >> 2 > ht->nNumUsed) {
   hash_size >>= 1;
  }
  ADD_SIZE(hash_size * sizeof(uint32_t) + ht->nNumUsed * sizeof(Bucket));
 } else {
  ADD_SIZE(HT_USED_SIZE(ht));
 }
}
