
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int name; int * connection; } ;


 int ECPG_NOT_CONN ;
 int ECPG_SQLSTATE_ECPG_INTERNAL_ERROR ;
 struct connection* ecpg_get_connection (char const*) ;
 int ecpg_init (struct connection*,char const*,int) ;
 int ecpg_raise (int,int ,int ,int ) ;

bool
ECPGstatus(int lineno, const char *connection_name)
{
 struct connection *con = ecpg_get_connection(connection_name);

 if (!ecpg_init(con, connection_name, lineno))
  return 0;


 if (con->connection == ((void*)0))
 {
  ecpg_raise(lineno, ECPG_NOT_CONN, ECPG_SQLSTATE_ECPG_INTERNAL_ERROR, con->name);
  return 0;
 }

 return 1;
}
