
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ pgParameterStatus ;
struct TYPE_7__ {int std_strings; char* last_sqlstate; int auth_req_received; int password_needed; int write_failed; scalar_t__ be_key; scalar_t__ be_pid; TYPE_1__* write_err_msg; TYPE_1__* lobjfuncs; scalar_t__ sversion; int client_encoding; TYPE_1__* pstatus; int * notifyTail; TYPE_1__* notifyHead; } ;
typedef TYPE_1__ PGnotify ;
typedef TYPE_3__ PGconn ;


 int PG_SQL_ASCII ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void
pqDropServerData(PGconn *conn)
{
 PGnotify *notify;
 pgParameterStatus *pstatus;


 notify = conn->notifyHead;
 while (notify != ((void*)0))
 {
  PGnotify *prev = notify;

  notify = notify->next;
  free(prev);
 }
 conn->notifyHead = conn->notifyTail = ((void*)0);


 pstatus = conn->pstatus;
 while (pstatus != ((void*)0))
 {
  pgParameterStatus *prev = pstatus;

  pstatus = pstatus->next;
  free(prev);
 }
 conn->pstatus = ((void*)0);
 conn->client_encoding = PG_SQL_ASCII;
 conn->std_strings = 0;
 conn->sversion = 0;


 if (conn->lobjfuncs)
  free(conn->lobjfuncs);
 conn->lobjfuncs = ((void*)0);


 conn->last_sqlstate[0] = '\0';
 conn->auth_req_received = 0;
 conn->password_needed = 0;
 conn->write_failed = 0;
 if (conn->write_err_msg)
  free(conn->write_err_msg);
 conn->write_err_msg = ((void*)0);
 conn->be_pid = 0;
 conn->be_key = 0;
}
