
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;
typedef int PGPing ;


 int * PQconnectStartParams (char const* const*,char const* const*,int) ;
 int PQfinish (int *) ;
 int internal_ping (int *) ;

PGPing
PQpingParams(const char *const *keywords,
    const char *const *values,
    int expand_dbname)
{
 PGconn *conn = PQconnectStartParams(keywords, values, expand_dbname);
 PGPing ret;

 ret = internal_ping(conn);
 PQfinish(conn);

 return ret;
}
