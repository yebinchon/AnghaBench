
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * domainData; } ;
typedef TYPE_1__ TypeCacheEntry ;
typedef int Oid ;


 int TYPECACHE_DOMAIN_CONSTR_INFO ;
 TYPE_1__* lookup_type_cache (int ,int ) ;

bool
DomainHasConstraints(Oid type_id)
{
 TypeCacheEntry *typentry;





 typentry = lookup_type_cache(type_id, TYPECACHE_DOMAIN_CONSTR_INFO);

 return (typentry->domainData != ((void*)0));
}
