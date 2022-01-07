
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;


 int pqIsnonblocking (int const*) ;

int
PQisnonblocking(const PGconn *conn)
{
 return pqIsnonblocking(conn);
}
