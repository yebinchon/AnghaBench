
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;


 int PQputnbytes (int *,char const*,int ) ;
 int strlen (char const*) ;

int
PQputline(PGconn *conn, const char *s)
{
 return PQputnbytes(conn, s, strlen(s));
}
