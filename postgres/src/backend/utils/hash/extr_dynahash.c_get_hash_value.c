
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int keysize; int (* hash ) (void const*,int ) ;} ;
typedef TYPE_1__ HTAB ;


 int stub1 (void const*,int ) ;

uint32
get_hash_value(HTAB *hashp, const void *keyPtr)
{
 return hashp->hash(keyPtr, hashp->keysize);
}
