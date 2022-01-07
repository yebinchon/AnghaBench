
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PostgresPollingStatusType ;
typedef int PGconn ;


 int PGRES_POLLING_FAILED ;
 int pgtls_open_client (int *) ;

PostgresPollingStatusType
pqsecure_open_client(PGconn *conn)
{




 return PGRES_POLLING_FAILED;

}
