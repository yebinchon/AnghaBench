
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int keysize; int (* hash ) (void const*,int ) ;} ;
typedef TYPE_1__ HTAB ;
typedef int HASHACTION ;


 void* hash_search_with_hash_value (TYPE_1__*,void const*,int ,int ,int*) ;
 int stub1 (void const*,int ) ;

void *
hash_search(HTAB *hashp,
   const void *keyPtr,
   HASHACTION action,
   bool *foundPtr)
{
 return hash_search_with_hash_value(hashp,
            keyPtr,
            hashp->hash(keyPtr, hashp->keysize),
            action,
            foundPtr);
}
