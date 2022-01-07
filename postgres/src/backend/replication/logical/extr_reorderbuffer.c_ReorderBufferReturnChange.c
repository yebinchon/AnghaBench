
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int * relids; } ;
struct TYPE_9__ {TYPE_5__* message; TYPE_5__* prefix; } ;
struct TYPE_8__ {int * oldtuple; int * newtuple; } ;
struct TYPE_11__ {TYPE_3__ truncate; int * snapshot; TYPE_2__ msg; TYPE_1__ tp; } ;
struct TYPE_12__ {int action; TYPE_4__ data; } ;
typedef TYPE_5__ ReorderBufferChange ;
typedef int ReorderBuffer ;
 int ReorderBufferFreeSnap (int *,int *) ;
 int ReorderBufferReturnRelids (int *,int *) ;
 int ReorderBufferReturnTupleBuf (int *,int *) ;
 int pfree (TYPE_5__*) ;

void
ReorderBufferReturnChange(ReorderBuffer *rb, ReorderBufferChange *change)
{

 switch (change->action)
 {
  case 136:
  case 128:
  case 137:
  case 132:
   if (change->data.tp.newtuple)
   {
    ReorderBufferReturnTupleBuf(rb, change->data.tp.newtuple);
    change->data.tp.newtuple = ((void*)0);
   }

   if (change->data.tp.oldtuple)
   {
    ReorderBufferReturnTupleBuf(rb, change->data.tp.oldtuple);
    change->data.tp.oldtuple = ((void*)0);
   }
   break;
  case 130:
   if (change->data.msg.prefix != ((void*)0))
    pfree(change->data.msg.prefix);
   change->data.msg.prefix = ((void*)0);
   if (change->data.msg.message != ((void*)0))
    pfree(change->data.msg.message);
   change->data.msg.message = ((void*)0);
   break;
  case 134:
   if (change->data.snapshot)
   {
    ReorderBufferFreeSnap(rb, change->data.snapshot);
    change->data.snapshot = ((void*)0);
   }
   break;

  case 129:
   if (change->data.truncate.relids != ((void*)0))
   {
    ReorderBufferReturnRelids(rb, change->data.truncate.relids);
    change->data.truncate.relids = ((void*)0);
   }
   break;
  case 133:
  case 135:
  case 131:
   break;
 }

 pfree(change);
}
