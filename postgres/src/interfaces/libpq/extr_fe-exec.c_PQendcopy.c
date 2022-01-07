
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pversion; } ;
typedef TYPE_1__ PGconn ;


 int PG_PROTOCOL_MAJOR (int ) ;
 int pqEndcopy2 (TYPE_1__*) ;
 int pqEndcopy3 (TYPE_1__*) ;

int
PQendcopy(PGconn *conn)
{
 if (!conn)
  return 0;

 if (PG_PROTOCOL_MAJOR(conn->pversion) >= 3)
  return pqEndcopy3(conn);
 else
  return pqEndcopy2(conn);
}
