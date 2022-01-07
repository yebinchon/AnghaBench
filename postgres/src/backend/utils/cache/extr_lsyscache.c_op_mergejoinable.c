
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cmp_proc; } ;
typedef TYPE_1__ TypeCacheEntry ;
struct TYPE_5__ {int oprcanmerge; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_operator ;


 scalar_t__ ARRAY_EQ_OP ;
 scalar_t__ F_BTARRAYCMP ;
 scalar_t__ F_BTRECORDCMP ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int OPEROID ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ RECORD_EQ_OP ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TYPECACHE_CMP_PROC ;
 TYPE_1__* lookup_type_cache (scalar_t__,int ) ;

bool
op_mergejoinable(Oid opno, Oid inputtype)
{
 bool result = 0;
 HeapTuple tp;
 TypeCacheEntry *typentry;







 if (opno == ARRAY_EQ_OP)
 {
  typentry = lookup_type_cache(inputtype, TYPECACHE_CMP_PROC);
  if (typentry->cmp_proc == F_BTARRAYCMP)
   result = 1;
 }
 else if (opno == RECORD_EQ_OP)
 {
  typentry = lookup_type_cache(inputtype, TYPECACHE_CMP_PROC);
  if (typentry->cmp_proc == F_BTRECORDCMP)
   result = 1;
 }
 else
 {

  tp = SearchSysCache1(OPEROID, ObjectIdGetDatum(opno));
  if (HeapTupleIsValid(tp))
  {
   Form_pg_operator optup = (Form_pg_operator) GETSTRUCT(tp);

   result = optup->oprcanmerge;
   ReleaseSysCache(tp);
  }
 }
 return result;
}
