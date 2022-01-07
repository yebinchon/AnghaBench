
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 struct connection* actual_connection ;
 int actual_connection_key ;
 struct connection* ecpg_get_connection (char const*) ;
 int ecpg_init (struct connection*,char const*,int) ;
 int pthread_setspecific (int ,struct connection*) ;

bool
ECPGsetconn(int lineno, const char *connection_name)
{
 struct connection *con = ecpg_get_connection(connection_name);

 if (!ecpg_init(con, connection_name, lineno))
  return 0;




 actual_connection = con;

 return 1;
}
