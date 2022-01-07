
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;


 int PQsendDescribe (int *,char,char const*) ;

int
PQsendDescribePortal(PGconn *conn, const char *portal)
{
 return PQsendDescribe(conn, 'P', portal);
}
