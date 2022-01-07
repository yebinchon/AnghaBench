
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;
typedef int PGPing ;


 int * PQconnectStart (char const*) ;
 int PQfinish (int *) ;
 int internal_ping (int *) ;

PGPing
PQping(const char *conninfo)
{
 PGconn *conn = PQconnectStart(conninfo);
 PGPing ret;

 ret = internal_ping(conn);
 PQfinish(conn);

 return ret;
}
