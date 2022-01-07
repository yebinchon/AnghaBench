
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* result; int * conn; } ;
struct TYPE_7__ {int nEvents; TYPE_1__* events; } ;
struct TYPE_6__ {int resultInitialized; int passThrough; int (* proc ) (int ,TYPE_3__*,int ) ;} ;
typedef TYPE_2__ PGresult ;
typedef int PGconn ;
typedef TYPE_3__ PGEventResultCreate ;


 int PGEVT_RESULTCREATE ;
 int stub1 (int ,TYPE_3__*,int ) ;

int
PQfireResultCreateEvents(PGconn *conn, PGresult *res)
{
 int i;

 if (!res)
  return 0;

 for (i = 0; i < res->nEvents; i++)
 {
  if (!res->events[i].resultInitialized)
  {
   PGEventResultCreate evt;

   evt.conn = conn;
   evt.result = res;
   if (!res->events[i].proc(PGEVT_RESULTCREATE, &evt,
          res->events[i].passThrough))
    return 0;

   res->events[i].resultInitialized = 1;
  }
 }

 return 1;
}
