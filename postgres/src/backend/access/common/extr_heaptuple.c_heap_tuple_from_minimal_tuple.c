
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_7__ {int t_len; scalar_t__ t_data; int t_tableOid; int t_self; } ;
struct TYPE_6__ {int t_len; } ;
typedef TYPE_1__* MinimalTuple ;
typedef scalar_t__ HeapTupleHeader ;
typedef TYPE_2__* HeapTuple ;


 int HEAPTUPLESIZE ;
 int HeapTupleHeaderData ;
 int InvalidOid ;
 int ItemPointerSetInvalid (int *) ;
 int MINIMAL_TUPLE_OFFSET ;
 int memcpy (char*,TYPE_1__*,int) ;
 int memset (scalar_t__,int ,int ) ;
 int offsetof (int ,int ) ;
 scalar_t__ palloc (int) ;
 int t_infomask2 ;

HeapTuple
heap_tuple_from_minimal_tuple(MinimalTuple mtup)
{
 HeapTuple result;
 uint32 len = mtup->t_len + MINIMAL_TUPLE_OFFSET;

 result = (HeapTuple) palloc(HEAPTUPLESIZE + len);
 result->t_len = len;
 ItemPointerSetInvalid(&(result->t_self));
 result->t_tableOid = InvalidOid;
 result->t_data = (HeapTupleHeader) ((char *) result + HEAPTUPLESIZE);
 memcpy((char *) result->t_data + MINIMAL_TUPLE_OFFSET, mtup, mtup->t_len);
 memset(result->t_data, 0, offsetof(HeapTupleHeaderData, t_infomask2));
 return result;
}
