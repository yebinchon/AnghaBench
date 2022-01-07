
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_12__ {int t_bits; } ;
struct TYPE_11__ {scalar_t__ atthasmissing; } ;
struct TYPE_10__ {TYPE_8__* t_data; } ;
struct TYPE_9__ {int natts; } ;
typedef TYPE_2__* HeapTuple ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ HeapTupleHeaderGetNatts (TYPE_8__*) ;
 scalar_t__ HeapTupleNoNulls (TYPE_2__*) ;






 TYPE_5__* TupleDescAttr (TYPE_1__*,int) ;
 int att_isnull (int,int ) ;
 int elog (int ,char*,int) ;

bool
heap_attisnull(HeapTuple tup, int attnum, TupleDesc tupleDesc)
{




 Assert(!tupleDesc || attnum <= tupleDesc->natts);
 if (attnum > (int) HeapTupleHeaderGetNatts(tup->t_data))
 {
  if (tupleDesc && TupleDescAttr(tupleDesc, attnum - 1)->atthasmissing)
   return 0;
  else
   return 1;
 }

 if (attnum > 0)
 {
  if (HeapTupleNoNulls(tup))
   return 0;
  return att_isnull(attnum - 1, tup->t_data->t_bits);
 }

 switch (attnum)
 {
  case 128:
  case 129:
  case 130:
  case 131:
  case 132:
  case 133:

   break;

  default:
   elog(ERROR, "invalid attnum: %d", attnum);
 }

 return 0;
}
