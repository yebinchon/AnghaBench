
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ReorderBufferTupleBuf ;
typedef int ReorderBuffer ;


 int pfree (int *) ;

void
ReorderBufferReturnTupleBuf(ReorderBuffer *rb, ReorderBufferTupleBuf *tuple)
{
 pfree(tuple);
}
