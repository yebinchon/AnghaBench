
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ type_id; int * rngelemtype; } ;
typedef TYPE_2__ TypeCacheEntry ;
struct TYPE_9__ {TYPE_1__* flinfo; } ;
struct TYPE_7__ {void* fn_extra; } ;
typedef scalar_t__ Oid ;
typedef TYPE_3__* FunctionCallInfo ;


 int ERROR ;
 int TYPECACHE_RANGE_INFO ;
 int elog (int ,char*,scalar_t__) ;
 TYPE_2__* lookup_type_cache (scalar_t__,int ) ;

TypeCacheEntry *
range_get_typcache(FunctionCallInfo fcinfo, Oid rngtypid)
{
 TypeCacheEntry *typcache = (TypeCacheEntry *) fcinfo->flinfo->fn_extra;

 if (typcache == ((void*)0) ||
  typcache->type_id != rngtypid)
 {
  typcache = lookup_type_cache(rngtypid, TYPECACHE_RANGE_INFO);
  if (typcache->rngelemtype == ((void*)0))
   elog(ERROR, "type %u is not a range type", rngtypid);
  fcinfo->flinfo->fn_extra = (void *) typcache;
 }

 return typcache;
}
