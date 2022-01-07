
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int float4 ;
struct TYPE_10__ {int enumsortorder; } ;
struct TYPE_9__ {int t_self; } ;
typedef int Relation ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_enum ;


 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int CommandCounterIncrement () ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 TYPE_1__* heap_copytuple (TYPE_1__*) ;
 int heap_freetuple (TYPE_1__*) ;

__attribute__((used)) static void
RenumberEnumType(Relation pg_enum, HeapTuple *existing, int nelems)
{
 int i;






 for (i = nelems - 1; i >= 0; i--)
 {
  HeapTuple newtup;
  Form_pg_enum en;
  float4 newsortorder;

  newtup = heap_copytuple(existing[i]);
  en = (Form_pg_enum) GETSTRUCT(newtup);

  newsortorder = i + 1;
  if (en->enumsortorder != newsortorder)
  {
   en->enumsortorder = newsortorder;

   CatalogTupleUpdate(pg_enum, &newtup->t_self, newtup);
  }

  heap_freetuple(newtup);
 }


 CommandCounterIncrement();
}
