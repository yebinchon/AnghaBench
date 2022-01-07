
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int resultInitialized; int passThrough; int (* proc ) (int ,TYPE_3__*,int ) ;} ;
struct TYPE_15__ {TYPE_2__* dest; TYPE_2__ const* src; } ;
struct TYPE_14__ {int numAttributes; int ntups; scalar_t__ nEvents; TYPE_5__* events; int memorySize; int noticeHooks; TYPE_1__** tuples; int attDescs; int cmdStatus; int client_encoding; } ;
struct TYPE_13__ {int len; int value; } ;
typedef TYPE_2__ PGresult ;
typedef TYPE_3__ PGEventResultCopy ;


 int PGEVT_RESULTCOPY ;
 int PGRES_TUPLES_OK ;
 int PG_COPYRES_ATTRS ;
 int PG_COPYRES_EVENTS ;
 int PG_COPYRES_NOTICEHOOKS ;
 int PG_COPYRES_TUPLES ;
 int PQclear (TYPE_2__*) ;
 TYPE_2__* PQmakeEmptyPGresult (int *,int ) ;
 int PQsetResultAttrs (TYPE_2__*,int,int ) ;
 int PQsetvalue (TYPE_2__*,int,int,int ,int ) ;
 TYPE_5__* dupEvents (TYPE_5__*,scalar_t__,int *) ;
 int strcpy (int ,int ) ;
 int stub1 (int ,TYPE_3__*,int ) ;

PGresult *
PQcopyResult(const PGresult *src, int flags)
{
 PGresult *dest;
 int i;

 if (!src)
  return ((void*)0);

 dest = PQmakeEmptyPGresult(((void*)0), PGRES_TUPLES_OK);
 if (!dest)
  return ((void*)0);


 dest->client_encoding = src->client_encoding;
 strcpy(dest->cmdStatus, src->cmdStatus);


 if (flags & (PG_COPYRES_ATTRS | PG_COPYRES_TUPLES))
 {
  if (!PQsetResultAttrs(dest, src->numAttributes, src->attDescs))
  {
   PQclear(dest);
   return ((void*)0);
  }
 }


 if (flags & PG_COPYRES_TUPLES)
 {
  int tup,
     field;

  for (tup = 0; tup < src->ntups; tup++)
  {
   for (field = 0; field < src->numAttributes; field++)
   {
    if (!PQsetvalue(dest, tup, field,
        src->tuples[tup][field].value,
        src->tuples[tup][field].len))
    {
     PQclear(dest);
     return ((void*)0);
    }
   }
  }
 }


 if (flags & PG_COPYRES_NOTICEHOOKS)
  dest->noticeHooks = src->noticeHooks;


 if ((flags & PG_COPYRES_EVENTS) && src->nEvents > 0)
 {
  dest->events = dupEvents(src->events, src->nEvents,
         &dest->memorySize);
  if (!dest->events)
  {
   PQclear(dest);
   return ((void*)0);
  }
  dest->nEvents = src->nEvents;
 }


 for (i = 0; i < dest->nEvents; i++)
 {
  if (src->events[i].resultInitialized)
  {
   PGEventResultCopy evt;

   evt.src = src;
   evt.dest = dest;
   if (!dest->events[i].proc(PGEVT_RESULTCOPY, &evt,
           dest->events[i].passThrough))
   {
    PQclear(dest);
    return ((void*)0);
   }
   dest->events[i].resultInitialized = 1;
  }
 }

 return dest;
}
