
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int resultInitialized; struct TYPE_8__* name; int * data; int passThrough; int proc; } ;
typedef TYPE_1__ PGEvent ;


 int free (TYPE_1__*) ;
 scalar_t__ malloc (size_t) ;
 TYPE_1__* strdup (TYPE_1__*) ;
 scalar_t__ strlen (TYPE_1__*) ;

__attribute__((used)) static PGEvent *
dupEvents(PGEvent *events, int count, size_t *memSize)
{
 PGEvent *newEvents;
 size_t msize;
 int i;

 if (!events || count <= 0)
  return ((void*)0);

 msize = count * sizeof(PGEvent);
 newEvents = (PGEvent *) malloc(msize);
 if (!newEvents)
  return ((void*)0);

 for (i = 0; i < count; i++)
 {
  newEvents[i].proc = events[i].proc;
  newEvents[i].passThrough = events[i].passThrough;
  newEvents[i].data = ((void*)0);
  newEvents[i].resultInitialized = 0;
  newEvents[i].name = strdup(events[i].name);
  if (!newEvents[i].name)
  {
   while (--i >= 0)
    free(newEvents[i].name);
   free(newEvents);
   return ((void*)0);
  }
  msize += strlen(events[i].name) + 1;
 }

 *memSize += msize;
 return newEvents;
}
