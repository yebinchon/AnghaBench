
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
struct TYPE_7__ {TYPE_1__ data; } ;
struct TYPE_6__ {int context; } ;
typedef TYPE_2__ ReorderBuffer ;
typedef int MemoryContext ;


 int MemoryContextDelete (int ) ;
 TYPE_4__* MyReplicationSlot ;
 int NameStr (int ) ;
 int ReorderBufferCleanupSerializedTXNs (int ) ;

void
ReorderBufferFree(ReorderBuffer *rb)
{
 MemoryContext context = rb->context;





 MemoryContextDelete(context);


 ReorderBufferCleanupSerializedTXNs(NameStr(MyReplicationSlot->data.name));
}
