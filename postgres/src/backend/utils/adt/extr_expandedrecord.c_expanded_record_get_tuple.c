
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int dnulls; int dvalues; int er_tupdesc; int * fvalue; } ;
typedef int * HeapTuple ;
typedef TYPE_1__ ExpandedRecordHeader ;


 int ER_FLAG_DVALUES_VALID ;
 int ER_FLAG_FVALUE_VALID ;
 int * heap_form_tuple (int ,int ,int ) ;

HeapTuple
expanded_record_get_tuple(ExpandedRecordHeader *erh)
{

 if (erh->flags & ER_FLAG_FVALUE_VALID)
  return erh->fvalue;


 if (erh->flags & ER_FLAG_DVALUES_VALID)
  return heap_form_tuple(erh->er_tupdesc, erh->dvalues, erh->dnulls);


 return ((void*)0);
}
