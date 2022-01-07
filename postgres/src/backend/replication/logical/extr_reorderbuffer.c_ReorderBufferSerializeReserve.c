
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ outbufsize; int outbuf; int context; } ;
typedef scalar_t__ Size ;
typedef TYPE_1__ ReorderBuffer ;


 int MemoryContextAlloc (int ,scalar_t__) ;
 int repalloc (int ,scalar_t__) ;

__attribute__((used)) static void
ReorderBufferSerializeReserve(ReorderBuffer *rb, Size sz)
{
 if (!rb->outbufsize)
 {
  rb->outbuf = MemoryContextAlloc(rb->context, sz);
  rb->outbufsize = sz;
 }
 else if (rb->outbufsize < sz)
 {
  rb->outbuf = repalloc(rb->outbuf, sz);
  rb->outbufsize = sz;
 }
}
