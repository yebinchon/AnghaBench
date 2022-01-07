
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* result; } ;
struct TYPE_7__ {int nEvents; struct TYPE_7__* events; int * errFields; int * paramDescs; struct TYPE_7__* tuples; int * attDescs; struct TYPE_7__* next; struct TYPE_7__* curBlock; struct TYPE_7__* name; int passThrough; int (* proc ) (int ,TYPE_3__*,int ) ;scalar_t__ resultInitialized; } ;
typedef TYPE_1__ PGresult_data ;
typedef TYPE_1__ PGresult ;
typedef TYPE_3__ PGEventResultDestroy ;


 int PGEVT_RESULTDESTROY ;
 int free (TYPE_1__*) ;
 int stub1 (int ,TYPE_3__*,int ) ;

void
PQclear(PGresult *res)
{
 PGresult_data *block;
 int i;

 if (!res)
  return;

 for (i = 0; i < res->nEvents; i++)
 {

  if (res->events[i].resultInitialized)
  {
   PGEventResultDestroy evt;

   evt.result = res;
   (void) res->events[i].proc(PGEVT_RESULTDESTROY, &evt,
            res->events[i].passThrough);
  }
  free(res->events[i].name);
 }

 if (res->events)
  free(res->events);


 while ((block = res->curBlock) != ((void*)0))
 {
  res->curBlock = block->next;
  free(block);
 }


 if (res->tuples)
  free(res->tuples);


 res->attDescs = ((void*)0);
 res->tuples = ((void*)0);
 res->paramDescs = ((void*)0);
 res->errFields = ((void*)0);
 res->events = ((void*)0);
 res->nEvents = 0;



 free(res);
}
