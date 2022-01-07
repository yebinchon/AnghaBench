
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* conn; } ;
struct TYPE_8__ {int nEvents; TYPE_1__* events; int errorMessage; int status; } ;
struct TYPE_7__ {int name; int passThrough; int (* proc ) (int ,TYPE_3__*,int ) ;} ;
typedef scalar_t__ PostgresPollingStatusType ;
typedef TYPE_2__ PGconn ;
typedef TYPE_3__ PGEventConnReset ;


 int CONNECTION_BAD ;
 int PGEVT_CONNRESET ;
 scalar_t__ PGRES_POLLING_FAILED ;
 scalar_t__ PGRES_POLLING_OK ;
 scalar_t__ PQconnectPoll (TYPE_2__*) ;
 int libpq_gettext (char*) ;
 int printfPQExpBuffer (int *,int ,int ) ;
 int stub1 (int ,TYPE_3__*,int ) ;

PostgresPollingStatusType
PQresetPoll(PGconn *conn)
{
 if (conn)
 {
  PostgresPollingStatusType status = PQconnectPoll(conn);

  if (status == PGRES_POLLING_OK)
  {




   int i;

   for (i = 0; i < conn->nEvents; i++)
   {
    PGEventConnReset evt;

    evt.conn = conn;
    if (!conn->events[i].proc(PGEVT_CONNRESET, &evt,
            conn->events[i].passThrough))
    {
     conn->status = CONNECTION_BAD;
     printfPQExpBuffer(&conn->errorMessage,
           libpq_gettext("PGEventProc \"%s\" failed during PGEVT_CONNRESET event\n"),
           conn->events[i].name);
     return PGRES_POLLING_FAILED;
    }
   }
  }

  return status;
 }

 return PGRES_POLLING_FAILED;
}
