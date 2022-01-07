
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int32 ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_7__ {scalar_t__ tdtypeid; scalar_t__ tdtypmod; } ;
typedef scalar_t__ Oid ;
typedef int ExprContext ;


 int PointerGetDatum (TYPE_1__**) ;
 int RegisterExprContextCallback (int *,int ,int ) ;
 int ReleaseTupleDesc (TYPE_1__*) ;
 int ShutdownTupleDescRef ;
 TYPE_1__* lookup_rowtype_tupdesc (scalar_t__,scalar_t__) ;

__attribute__((used)) static TupleDesc
get_cached_rowtype(Oid type_id, int32 typmod,
       TupleDesc *cache_field, ExprContext *econtext)
{
 TupleDesc tupDesc = *cache_field;


 if (tupDesc == ((void*)0) ||
  type_id != tupDesc->tdtypeid ||
  typmod != tupDesc->tdtypmod)
 {
  tupDesc = lookup_rowtype_tupdesc(type_id, typmod);

  if (*cache_field)
  {

   ReleaseTupleDesc(*cache_field);
  }
  else
  {

   RegisterExprContextCallback(econtext,
          ShutdownTupleDescRef,
          PointerGetDatum(cache_field));
  }
  *cache_field = tupDesc;
 }
 return tupDesc;
}
