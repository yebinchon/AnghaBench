
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int float4 ;
struct TYPE_6__ {scalar_t__ value; int isnull; } ;
struct TYPE_5__ {int xs_recheckorderby; int numberOfOrderBys; int* xs_orderbynulls; void** xs_orderbyvals; } ;
typedef scalar_t__ Oid ;
typedef TYPE_1__* IndexScanDesc ;
typedef TYPE_2__ IndexOrderByDistance ;
typedef void* Datum ;


 int Assert (int ) ;
 int DatumGetPointer (void*) ;
 int ERROR ;
 scalar_t__ FLOAT4OID ;
 scalar_t__ FLOAT8OID ;
 void* Float4GetDatum (int ) ;
 void* Float8GetDatum (scalar_t__) ;
 int elog (int ,char*) ;
 int pfree (int ) ;

void
index_store_float8_orderby_distances(IndexScanDesc scan, Oid *orderByTypes,
          IndexOrderByDistance *distances,
          bool recheckOrderBy)
{
 int i;

 Assert(distances || !recheckOrderBy);

 scan->xs_recheckorderby = recheckOrderBy;

 for (i = 0; i < scan->numberOfOrderBys; i++)
 {
  if (orderByTypes[i] == FLOAT8OID)
  {


   if (!scan->xs_orderbynulls[i])
    pfree(DatumGetPointer(scan->xs_orderbyvals[i]));

   if (distances && !distances[i].isnull)
   {
    scan->xs_orderbyvals[i] = Float8GetDatum(distances[i].value);
    scan->xs_orderbynulls[i] = 0;
   }
   else
   {
    scan->xs_orderbyvals[i] = (Datum) 0;
    scan->xs_orderbynulls[i] = 1;
   }
  }
  else if (orderByTypes[i] == FLOAT4OID)
  {



   if (!scan->xs_orderbynulls[i])
    pfree(DatumGetPointer(scan->xs_orderbyvals[i]));

   if (distances && !distances[i].isnull)
   {
    scan->xs_orderbyvals[i] = Float4GetDatum((float4) distances[i].value);
    scan->xs_orderbynulls[i] = 0;
   }
   else
   {
    scan->xs_orderbyvals[i] = (Datum) 0;
    scan->xs_orderbynulls[i] = 1;
   }
  }
  else
  {
   if (scan->xs_recheckorderby)
    elog(ERROR, "ORDER BY operator must return float8 or float4 if the distance function is lossy");
   scan->xs_orderbynulls[i] = 1;
  }
 }
}
