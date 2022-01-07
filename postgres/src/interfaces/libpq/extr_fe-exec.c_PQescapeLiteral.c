
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;


 char* PQescapeInternal (int *,char const*,size_t,int) ;

char *
PQescapeLiteral(PGconn *conn, const char *str, size_t len)
{
 return PQescapeInternal(conn, str, len, 0);
}
