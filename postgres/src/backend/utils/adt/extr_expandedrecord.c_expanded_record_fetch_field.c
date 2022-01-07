
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nfields; int* dnulls; int * fvalue; int * dvalues; } ;
typedef TYPE_1__ ExpandedRecordHeader ;
typedef int Datum ;


 scalar_t__ ExpandedRecordIsEmpty (TYPE_1__*) ;
 int deconstruct_expanded_record (TYPE_1__*) ;
 int heap_getsysattr (int *,int,int *,int*) ;
 scalar_t__ unlikely (int) ;

Datum
expanded_record_fetch_field(ExpandedRecordHeader *erh, int fnumber,
       bool *isnull)
{
 if (fnumber > 0)
 {

  if (ExpandedRecordIsEmpty(erh))
  {
   *isnull = 1;
   return (Datum) 0;
  }

  deconstruct_expanded_record(erh);

  if (unlikely(fnumber > erh->nfields))
  {
   *isnull = 1;
   return (Datum) 0;
  }
  *isnull = erh->dnulls[fnumber - 1];
  return erh->dvalues[fnumber - 1];
 }
 else
 {

  if (erh->fvalue == ((void*)0))
  {
   *isnull = 1;
   return (Datum) 0;
  }

  return heap_getsysattr(erh->fvalue, fnumber, ((void*)0), isnull);
 }
}
