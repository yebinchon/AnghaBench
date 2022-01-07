
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; void* len; int maxlen; } ;
struct TYPE_5__ {scalar_t__ sock; TYPE_1__ errorMessage; int be_key; int be_pid; int raddr; } ;
typedef TYPE_2__ PGconn ;


 scalar_t__ PGINVALID_SOCKET ;
 int internal_cancel (int *,int ,int ,int ,int ) ;
 int strlcpy (int ,char*,int ) ;
 void* strlen (int ) ;

int
PQrequestCancel(PGconn *conn)
{
 int r;


 if (!conn)
  return 0;

 if (conn->sock == PGINVALID_SOCKET)
 {
  strlcpy(conn->errorMessage.data,
    "PQrequestCancel() -- connection is not open\n",
    conn->errorMessage.maxlen);
  conn->errorMessage.len = strlen(conn->errorMessage.data);

  return 0;
 }

 r = internal_cancel(&conn->raddr, conn->be_pid, conn->be_key,
      conn->errorMessage.data, conn->errorMessage.maxlen);

 if (!r)
  conn->errorMessage.len = strlen(conn->errorMessage.data);

 return r;
}
