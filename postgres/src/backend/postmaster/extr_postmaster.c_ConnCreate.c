
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pg_gssinfo ;
struct TYPE_5__ {scalar_t__ sock; int * gss; } ;
typedef TYPE_1__ Port ;


 int ConnFree (TYPE_1__*) ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ExitPostmaster (int) ;
 int LOG ;
 scalar_t__ PGINVALID_SOCKET ;
 scalar_t__ STATUS_OK ;
 int StreamClose (scalar_t__) ;
 scalar_t__ StreamConnection (int,TYPE_1__*) ;
 scalar_t__ calloc (int,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static Port *
ConnCreate(int serverFd)
{
 Port *port;

 if (!(port = (Port *) calloc(1, sizeof(Port))))
 {
  ereport(LOG,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("out of memory")));
  ExitPostmaster(1);
 }

 if (StreamConnection(serverFd, port) != STATUS_OK)
 {
  if (port->sock != PGINVALID_SOCKET)
   StreamClose(port->sock);
  ConnFree(port);
  return ((void*)0);
 }
 return port;
}
