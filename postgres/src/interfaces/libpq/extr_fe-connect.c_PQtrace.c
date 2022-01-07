
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * Pfdebug; } ;
typedef TYPE_1__ PGconn ;
typedef int FILE ;


 int PQuntrace (TYPE_1__*) ;

void
PQtrace(PGconn *conn, FILE *debug_port)
{
 if (conn == ((void*)0))
  return;
 PQuntrace(conn);
 conn->Pfdebug = debug_port;
}
