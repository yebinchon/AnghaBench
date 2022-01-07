
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_4__ {int t_data; } ;
typedef TYPE_1__* HeapTuple ;
typedef scalar_t__ HTSV_Result ;
typedef int Buffer ;


 scalar_t__ HEAPTUPLE_LIVE ;
 int HeapTupleHeaderGetXmin (int ) ;
 scalar_t__ HeapTupleSatisfiesVacuum (TYPE_1__*,int ,int ) ;
 int TransactionIdPrecedes (int ,int ) ;

__attribute__((used)) static bool
tuple_all_visible(HeapTuple tup, TransactionId OldestXmin, Buffer buffer)
{
 HTSV_Result state;
 TransactionId xmin;

 state = HeapTupleSatisfiesVacuum(tup, OldestXmin, buffer);
 if (state != HEAPTUPLE_LIVE)
  return 0;
 xmin = HeapTupleHeaderGetXmin(tup->t_data);
 if (!TransactionIdPrecedes(xmin, OldestXmin))
  return 0;

 return 1;
}
