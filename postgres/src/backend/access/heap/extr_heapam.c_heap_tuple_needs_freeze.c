
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* TransactionId ;
struct TYPE_10__ {int t_infomask; } ;
struct TYPE_9__ {void* xid; } ;
typedef TYPE_1__ MultiXactMember ;
typedef void* MultiXactId ;
typedef TYPE_2__* HeapTupleHeader ;
typedef int Buffer ;


 int GetMultiXactIdMembers (void*,TYPE_1__**,int,int ) ;
 scalar_t__ HEAP_LOCKED_UPGRADED (int) ;
 int HEAP_MOVED ;
 int HEAP_XMAX_IS_LOCKED_ONLY (int) ;
 int HEAP_XMAX_IS_MULTI ;
 void* HeapTupleHeaderGetRawXmax (TYPE_2__*) ;
 void* HeapTupleHeaderGetXmin (TYPE_2__*) ;
 void* HeapTupleHeaderGetXvac (TYPE_2__*) ;
 int MultiXactIdIsValid (void*) ;
 scalar_t__ MultiXactIdPrecedes (void*,void*) ;
 scalar_t__ TransactionIdIsNormal (void*) ;
 scalar_t__ TransactionIdPrecedes (void*,void*) ;
 int pfree (TYPE_1__*) ;

bool
heap_tuple_needs_freeze(HeapTupleHeader tuple, TransactionId cutoff_xid,
      MultiXactId cutoff_multi, Buffer buf)
{
 TransactionId xid;

 xid = HeapTupleHeaderGetXmin(tuple);
 if (TransactionIdIsNormal(xid) &&
  TransactionIdPrecedes(xid, cutoff_xid))
  return 1;






 if (tuple->t_infomask & HEAP_XMAX_IS_MULTI)
 {
  MultiXactId multi;

  multi = HeapTupleHeaderGetRawXmax(tuple);
  if (!MultiXactIdIsValid(multi))
  {

   ;
  }
  else if (HEAP_LOCKED_UPGRADED(tuple->t_infomask))
   return 1;
  else if (MultiXactIdPrecedes(multi, cutoff_multi))
   return 1;
  else
  {
   MultiXactMember *members;
   int nmembers;
   int i;



   nmembers = GetMultiXactIdMembers(multi, &members, 0,
            HEAP_XMAX_IS_LOCKED_ONLY(tuple->t_infomask));

   for (i = 0; i < nmembers; i++)
   {
    if (TransactionIdPrecedes(members[i].xid, cutoff_xid))
    {
     pfree(members);
     return 1;
    }
   }
   if (nmembers > 0)
    pfree(members);
  }
 }
 else
 {
  xid = HeapTupleHeaderGetRawXmax(tuple);
  if (TransactionIdIsNormal(xid) &&
   TransactionIdPrecedes(xid, cutoff_xid))
   return 1;
 }

 if (tuple->t_infomask & HEAP_MOVED)
 {
  xid = HeapTupleHeaderGetXvac(tuple);
  if (TransactionIdIsNormal(xid) &&
   TransactionIdPrecedes(xid, cutoff_xid))
   return 1;
 }

 return 0;
}
