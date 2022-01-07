
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ typtype; scalar_t__ typrelid; int flags; scalar_t__ tupDesc_identifier; TYPE_2__* tupDesc; } ;
typedef TYPE_1__ TypeCacheEntry ;
struct TYPE_4__ {scalar_t__ tdrefcount; } ;
typedef scalar_t__ Oid ;
typedef int HASH_SEQ_STATUS ;
typedef int Datum ;


 int Assert (int) ;
 int FreeTupleDesc (TYPE_2__*) ;
 scalar_t__ InvalidOid ;
 int TCFLAGS_DOMAIN_BASE_IS_COMPOSITE ;
 scalar_t__ TYPTYPE_COMPOSITE ;
 scalar_t__ TYPTYPE_DOMAIN ;
 int TypeCacheHash ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;

__attribute__((used)) static void
TypeCacheRelCallback(Datum arg, Oid relid)
{
 HASH_SEQ_STATUS status;
 TypeCacheEntry *typentry;


 hash_seq_init(&status, TypeCacheHash);
 while ((typentry = (TypeCacheEntry *) hash_seq_search(&status)) != ((void*)0))
 {
  if (typentry->typtype == TYPTYPE_COMPOSITE)
  {

   if (relid != typentry->typrelid && relid != InvalidOid)
    continue;


   if (typentry->tupDesc != ((void*)0))
   {





    Assert(typentry->tupDesc->tdrefcount > 0);
    if (--typentry->tupDesc->tdrefcount == 0)
     FreeTupleDesc(typentry->tupDesc);
    typentry->tupDesc = ((void*)0);
    typentry->tupDesc_identifier = 0;
   }


   typentry->flags = 0;
  }
  else if (typentry->typtype == TYPTYPE_DOMAIN)
  {






   if (typentry->flags & TCFLAGS_DOMAIN_BASE_IS_COMPOSITE)
    typentry->flags = 0;
  }
 }
}
