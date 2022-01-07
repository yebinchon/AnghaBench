
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nEvents; TYPE_1__* events; } ;
struct TYPE_4__ {scalar_t__ proc; void* data; } ;
typedef TYPE_2__ PGresult ;
typedef scalar_t__ PGEventProc ;



int
PQresultSetInstanceData(PGresult *result, PGEventProc proc, void *data)
{
 int i;

 if (!result || !proc)
  return 0;

 for (i = 0; i < result->nEvents; i++)
 {
  if (result->events[i].proc == proc)
  {
   result->events[i].data = data;
   return 1;
  }
 }

 return 0;
}
