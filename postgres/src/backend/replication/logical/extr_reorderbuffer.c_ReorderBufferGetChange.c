
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int change_context; } ;
typedef int ReorderBufferChange ;
typedef TYPE_1__ ReorderBuffer ;


 scalar_t__ MemoryContextAlloc (int ,int) ;
 int memset (int *,int ,int) ;

ReorderBufferChange *
ReorderBufferGetChange(ReorderBuffer *rb)
{
 ReorderBufferChange *change;

 change = (ReorderBufferChange *)
  MemoryContextAlloc(rb->change_context, sizeof(ReorderBufferChange));

 memset(change, 0, sizeof(ReorderBufferChange));
 return change;
}
