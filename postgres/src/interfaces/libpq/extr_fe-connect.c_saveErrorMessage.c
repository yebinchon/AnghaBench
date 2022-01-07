
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int data; } ;
struct TYPE_5__ {TYPE_3__ errorMessage; } ;
typedef int PQExpBuffer ;
typedef TYPE_1__ PGconn ;


 scalar_t__ PQExpBufferBroken (int ) ;
 int appendPQExpBufferStr (int ,int ) ;
 int initPQExpBuffer (int ) ;
 int libpq_gettext (char*) ;
 int printfPQExpBuffer (TYPE_3__*,int ) ;
 int resetPQExpBuffer (TYPE_3__*) ;

__attribute__((used)) static bool
saveErrorMessage(PGconn *conn, PQExpBuffer savedMessage)
{
 initPQExpBuffer(savedMessage);
 appendPQExpBufferStr(savedMessage,
       conn->errorMessage.data);
 if (PQExpBufferBroken(savedMessage))
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("out of memory\n"));
  return 0;
 }

 resetPQExpBuffer(&conn->errorMessage);
 return 1;
}
