
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int be_key; int be_pid; int raddr; } ;
struct TYPE_6__ {scalar_t__ sock; int be_key; int be_pid; int raddr; } ;
typedef int SockAddr ;
typedef TYPE_1__ PGconn ;
typedef TYPE_2__ PGcancel ;


 scalar_t__ PGINVALID_SOCKET ;
 TYPE_2__* malloc (int) ;
 int memcpy (int *,int *,int) ;

PGcancel *
PQgetCancel(PGconn *conn)
{
 PGcancel *cancel;

 if (!conn)
  return ((void*)0);

 if (conn->sock == PGINVALID_SOCKET)
  return ((void*)0);

 cancel = malloc(sizeof(PGcancel));
 if (cancel == ((void*)0))
  return ((void*)0);

 memcpy(&cancel->raddr, &conn->raddr, sizeof(SockAddr));
 cancel->be_pid = conn->be_pid;
 cancel->be_key = conn->be_key;

 return cancel;
}
