
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_9__ {int attlen; } ;
struct TYPE_8__ {TYPE_1__* rd_att; } ;
struct TYPE_7__ {int natts; } ;
typedef TYPE_2__* Relation ;
typedef int Datum ;


 int PointerGetDatum (int ) ;
 TYPE_5__* TupleDescAttr (TYPE_1__*,int) ;
 scalar_t__ VARATT_IS_EXTERNAL_ONDISK (int ) ;
 int toast_delete_datum (TYPE_2__*,int ,int) ;

void
toast_delete_external(Relation rel, Datum *values, bool *isnull,
       bool is_speculative)
{
 TupleDesc tupleDesc = rel->rd_att;
 int numAttrs = tupleDesc->natts;
 int i;

 for (i = 0; i < numAttrs; i++)
 {
  if (TupleDescAttr(tupleDesc, i)->attlen == -1)
  {
   Datum value = values[i];

   if (isnull[i])
    continue;
   else if (VARATT_IS_EXTERNAL_ONDISK(PointerGetDatum(value)))
    toast_delete_datum(rel, value, is_speculative);
  }
 }
}
