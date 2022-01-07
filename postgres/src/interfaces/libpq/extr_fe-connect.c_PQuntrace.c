
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Pfdebug; } ;
typedef TYPE_1__ PGconn ;


 int fflush (int *) ;

void
PQuntrace(PGconn *conn)
{
 if (conn == ((void*)0))
  return;
 if (conn->Pfdebug)
 {
  fflush(conn->Pfdebug);
  conn->Pfdebug = ((void*)0);
 }
}
