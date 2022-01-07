
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int tup_context; } ;
struct TYPE_7__ {int t_data; } ;
struct TYPE_8__ {TYPE_1__ tuple; scalar_t__ alloc_tuple_size; } ;
typedef scalar_t__ Size ;
typedef TYPE_2__ ReorderBufferTupleBuf ;
typedef TYPE_3__ ReorderBuffer ;


 scalar_t__ MAXIMUM_ALIGNOF ;
 scalar_t__ MemoryContextAlloc (int ,scalar_t__) ;
 int ReorderBufferTupleBufData (TYPE_2__*) ;
 scalar_t__ SizeofHeapTupleHeader ;

ReorderBufferTupleBuf *
ReorderBufferGetTupleBuf(ReorderBuffer *rb, Size tuple_len)
{
 ReorderBufferTupleBuf *tuple;
 Size alloc_len;

 alloc_len = tuple_len + SizeofHeapTupleHeader;

 tuple = (ReorderBufferTupleBuf *)
  MemoryContextAlloc(rb->tup_context,
         sizeof(ReorderBufferTupleBuf) +
         MAXIMUM_ALIGNOF + alloc_len);
 tuple->alloc_tuple_size = alloc_len;
 tuple->tuple.t_data = ReorderBufferTupleBufData(tuple);

 return tuple;
}
