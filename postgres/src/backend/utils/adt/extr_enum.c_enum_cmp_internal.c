
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TypeCacheEntry ;
struct TYPE_7__ {int enumtypid; } ;
struct TYPE_6__ {TYPE_1__* flinfo; } ;
struct TYPE_5__ {void* fn_extra; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_2__* FunctionCallInfo ;
typedef TYPE_3__* Form_pg_enum ;


 int Assert (int ) ;
 int ENUMOID ;
 int ERRCODE_INVALID_BINARY_REPRESENTATION ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int compare_values_of_enum (int *,int,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int) ;
 int * lookup_type_cache (int,int ) ;

__attribute__((used)) static int
enum_cmp_internal(Oid arg1, Oid arg2, FunctionCallInfo fcinfo)
{
 TypeCacheEntry *tcache;
 Assert(fcinfo->flinfo != ((void*)0));


 if (arg1 == arg2)
  return 0;


 if ((arg1 & 1) == 0 && (arg2 & 1) == 0)
 {
  if (arg1 < arg2)
   return -1;
  else
   return 1;
 }


 tcache = (TypeCacheEntry *) fcinfo->flinfo->fn_extra;
 if (tcache == ((void*)0))
 {
  HeapTuple enum_tup;
  Form_pg_enum en;
  Oid typeoid;


  enum_tup = SearchSysCache1(ENUMOID, ObjectIdGetDatum(arg1));
  if (!HeapTupleIsValid(enum_tup))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_BINARY_REPRESENTATION),
      errmsg("invalid internal value for enum: %u",
       arg1)));
  en = (Form_pg_enum) GETSTRUCT(enum_tup);
  typeoid = en->enumtypid;
  ReleaseSysCache(enum_tup);

  tcache = lookup_type_cache(typeoid, 0);
  fcinfo->flinfo->fn_extra = (void *) tcache;
 }


 return compare_values_of_enum(tcache, arg1, arg2);
}
