
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pversion; } ;
typedef TYPE_1__ PGconn ;


 int PG_PROTOCOL_MAJOR (int ) ;
 int pqGetlineAsync2 (TYPE_1__*,char*,int) ;
 int pqGetlineAsync3 (TYPE_1__*,char*,int) ;

int
PQgetlineAsync(PGconn *conn, char *buffer, int bufsize)
{
 if (!conn)
  return -1;

 if (PG_PROTOCOL_MAJOR(conn->pversion) >= 3)
  return pqGetlineAsync3(conn, buffer, bufsize);
 else
  return pqGetlineAsync2(conn, buffer, bufsize);
}
