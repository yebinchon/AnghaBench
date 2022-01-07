
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * next_result; int * result; } ;
typedef TYPE_1__ PGconn ;


 int PQclear (int *) ;

void
pqClearAsyncResult(PGconn *conn)
{
 if (conn->result)
  PQclear(conn->result);
 conn->result = ((void*)0);
 if (conn->next_result)
  PQclear(conn->next_result);
 conn->next_result = ((void*)0);
}
