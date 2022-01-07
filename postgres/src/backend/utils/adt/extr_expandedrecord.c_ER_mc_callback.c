
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_5__ {TYPE_1__* er_tupdesc; } ;
struct TYPE_4__ {scalar_t__ tdrefcount; } ;
typedef TYPE_2__ ExpandedRecordHeader ;


 int FreeTupleDesc (TYPE_1__*) ;

__attribute__((used)) static void
ER_mc_callback(void *arg)
{
 ExpandedRecordHeader *erh = (ExpandedRecordHeader *) arg;
 TupleDesc tupdesc = erh->er_tupdesc;


 if (tupdesc)
 {
  erh->er_tupdesc = ((void*)0);
  if (tupdesc->tdrefcount > 0)
  {
   if (--tupdesc->tdrefcount == 0)
    FreeTupleDesc(tupdesc);
  }
 }
}
