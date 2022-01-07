
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zend_persistent_script ;
typedef int zend_file_cache_metainfo ;
typedef int (* serialize_callback_t ) (int *,int *,int *,void*) ;
struct TYPE_9__ {int val; int key; } ;
struct TYPE_8__ {int nNumUsed; TYPE_2__* arData; } ;
typedef TYPE_1__ HashTable ;
typedef TYPE_2__ Bucket ;


 int HASH_FLAG_UNINITIALIZED ;
 int HT_FLAGS (TYPE_1__*) ;
 scalar_t__ IS_SERIALIZED (TYPE_2__*) ;
 scalar_t__ IS_UNDEF ;
 int SERIALIZE_PTR (TYPE_2__*) ;
 int SERIALIZE_STR (int ) ;
 int UNSERIALIZE_PTR (TYPE_2__*) ;
 scalar_t__ Z_TYPE (int ) ;

__attribute__((used)) static void zend_file_cache_serialize_hash(HashTable *ht,
                                           zend_persistent_script *script,
                                           zend_file_cache_metainfo *info,
                                           void *buf,
                                           serialize_callback_t func)
{
 Bucket *p, *end;

 if (HT_FLAGS(ht) & HASH_FLAG_UNINITIALIZED) {
  ht->arData = ((void*)0);
  return;
 }
 if (IS_SERIALIZED(ht->arData)) {
  return;
 }
 SERIALIZE_PTR(ht->arData);
 p = ht->arData;
 UNSERIALIZE_PTR(p);
 end = p + ht->nNumUsed;
 while (p < end) {
  if (Z_TYPE(p->val) != IS_UNDEF) {
   SERIALIZE_STR(p->key);
   func(&p->val, script, info, buf);
  }
  p++;
 }
}
