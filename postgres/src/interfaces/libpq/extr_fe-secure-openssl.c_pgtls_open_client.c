
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * ssl; } ;
typedef int PostgresPollingStatusType ;
typedef TYPE_1__ PGconn ;


 int PGRES_POLLING_FAILED ;
 scalar_t__ initialize_SSL (TYPE_1__*) ;
 int open_client_SSL (TYPE_1__*) ;
 int pgtls_close (TYPE_1__*) ;

PostgresPollingStatusType
pgtls_open_client(PGconn *conn)
{

 if (conn->ssl == ((void*)0))
 {




  if (initialize_SSL(conn) != 0)
  {

   pgtls_close(conn);
   return PGRES_POLLING_FAILED;
  }
 }


 return open_client_SSL(conn);
}
