
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ hash_proc; } ;
typedef TYPE_1__ TypeCacheEntry ;
struct TYPE_5__ {int oprcanhash; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_operator ;


 scalar_t__ ARRAY_EQ_OP ;
 scalar_t__ F_HASH_ARRAY ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int OPEROID ;
 int ObjectIdGetDatum (scalar_t__) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TYPECACHE_HASH_PROC ;
 TYPE_1__* lookup_type_cache (scalar_t__,int ) ;

bool
op_hashjoinable(Oid opno, Oid inputtype)
{
 bool result = 0;
 HeapTuple tp;
 TypeCacheEntry *typentry;



 if (opno == ARRAY_EQ_OP)
 {
  typentry = lookup_type_cache(inputtype, TYPECACHE_HASH_PROC);
  if (typentry->hash_proc == F_HASH_ARRAY)
   result = 1;
 }
 else
 {

  tp = SearchSysCache1(OPEROID, ObjectIdGetDatum(opno));
  if (HeapTupleIsValid(tp))
  {
   Form_pg_operator optup = (Form_pg_operator) GETSTRUCT(tp);

   result = optup->oprcanhash;
   ReleaseSysCache(tp);
  }
 }
 return result;
}
