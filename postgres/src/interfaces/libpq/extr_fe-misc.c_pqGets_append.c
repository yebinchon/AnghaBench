
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PQExpBuffer ;
typedef int PGconn ;


 int pqGets_internal (int ,int *,int) ;

int
pqGets_append(PQExpBuffer buf, PGconn *conn)
{
 return pqGets_internal(buf, conn, 0);
}
