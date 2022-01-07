
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* write_err_msg; int result; } ;
typedef TYPE_1__ PGconn ;


 char* libpq_gettext (char*) ;
 int pqCatenateResultError (int ,char*) ;
 int pqSaveErrorResult (TYPE_1__*) ;

__attribute__((used)) static void
pqSaveWriteError(PGconn *conn)
{




 pqSaveErrorResult(conn);






 if (conn->write_err_msg && conn->write_err_msg[0] != '\0')
  pqCatenateResultError(conn->result, conn->write_err_msg);
 else
  pqCatenateResultError(conn->result,
         libpq_gettext("write to server failed\n"));
}
