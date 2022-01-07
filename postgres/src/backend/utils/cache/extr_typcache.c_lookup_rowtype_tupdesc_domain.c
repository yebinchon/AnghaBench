
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_3__ {scalar_t__ typtype; int * tupDesc; int domainBaseTypmod; int domainBaseType; } ;
typedef TYPE_1__ TypeCacheEntry ;
typedef int * TupleDesc ;
typedef scalar_t__ Oid ;


 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int PinTupleDesc (int *) ;
 scalar_t__ RECORDOID ;
 int TYPECACHE_DOMAIN_BASE_INFO ;
 int TYPECACHE_TUPDESC ;
 scalar_t__ TYPTYPE_DOMAIN ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int format_type_be (scalar_t__) ;
 int * lookup_rowtype_tupdesc_internal (scalar_t__,int ,int) ;
 int * lookup_rowtype_tupdesc_noerror (int ,int ,int) ;
 TYPE_1__* lookup_type_cache (scalar_t__,int) ;

TupleDesc
lookup_rowtype_tupdesc_domain(Oid type_id, int32 typmod, bool noError)
{
 TupleDesc tupDesc;

 if (type_id != RECORDOID)
 {




  TypeCacheEntry *typentry;

  typentry = lookup_type_cache(type_id,
          TYPECACHE_TUPDESC |
          TYPECACHE_DOMAIN_BASE_INFO);
  if (typentry->typtype == TYPTYPE_DOMAIN)
   return lookup_rowtype_tupdesc_noerror(typentry->domainBaseType,
              typentry->domainBaseTypmod,
              noError);
  if (typentry->tupDesc == ((void*)0) && !noError)
   ereport(ERROR,
     (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("type %s is not composite",
       format_type_be(type_id))));
  tupDesc = typentry->tupDesc;
 }
 else
  tupDesc = lookup_rowtype_tupdesc_internal(type_id, typmod, noError);
 if (tupDesc != ((void*)0))
  PinTupleDesc(tupDesc);
 return tupDesc;
}
