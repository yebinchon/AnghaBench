
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int data; } ;
struct TYPE_11__ {TYPE_1__ errorMessage; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef TYPE_2__ PGconn ;


 scalar_t__ PQExpBufferBroken (TYPE_1__*) ;
 int appendPQExpBufferStr (TYPE_1__*,int ) ;
 int libpq_gettext (char*) ;
 int printfPQExpBuffer (TYPE_1__*,int ) ;
 int resetPQExpBuffer (TYPE_1__*) ;
 int termPQExpBuffer (TYPE_1__*) ;

__attribute__((used)) static void
restoreErrorMessage(PGconn *conn, PQExpBuffer savedMessage)
{
 appendPQExpBufferStr(savedMessage, conn->errorMessage.data);
 resetPQExpBuffer(&conn->errorMessage);
 appendPQExpBufferStr(&conn->errorMessage, savedMessage->data);

 if (PQExpBufferBroken(savedMessage) ||
  PQExpBufferBroken(&conn->errorMessage))
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("out of memory\n"));
 termPQExpBuffer(savedMessage);
}
