
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; } ;
struct TYPE_4__ {int * tmpcontext; TYPE_1__ buf; int * attrinfo; int * myinfo; } ;
typedef int DestReceiver ;
typedef TYPE_2__ DR_printtup ;


 int MemoryContextDelete (int *) ;
 int pfree (int *) ;

__attribute__((used)) static void
printtup_shutdown(DestReceiver *self)
{
 DR_printtup *myState = (DR_printtup *) self;

 if (myState->myinfo)
  pfree(myState->myinfo);
 myState->myinfo = ((void*)0);

 myState->attrinfo = ((void*)0);

 if (myState->buf.data)
  pfree(myState->buf.data);
 myState->buf.data = ((void*)0);

 if (myState->tmpcontext)
  MemoryContextDelete(myState->tmpcontext);
 myState->tmpcontext = ((void*)0);
}
