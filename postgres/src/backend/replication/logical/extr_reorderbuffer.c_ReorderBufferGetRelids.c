
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int context; } ;
typedef int Size ;
typedef TYPE_1__ ReorderBuffer ;
typedef int Oid ;


 scalar_t__ MemoryContextAlloc (int ,int) ;

Oid *
ReorderBufferGetRelids(ReorderBuffer *rb, int nrelids)
{
 Oid *relids;
 Size alloc_len;

 alloc_len = sizeof(Oid) * nrelids;

 relids = (Oid *) MemoryContextAlloc(rb->context, alloc_len);

 return relids;
}
