
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int * connection; } ;
typedef int PGconn ;


 struct connection* ecpg_get_connection (char const*) ;

PGconn *
ECPGget_PGconn(const char *connection_name)
{
 struct connection *con;

 con = ecpg_get_connection(connection_name);
 if (con == ((void*)0))
  return ((void*)0);

 return con->connection;
}
