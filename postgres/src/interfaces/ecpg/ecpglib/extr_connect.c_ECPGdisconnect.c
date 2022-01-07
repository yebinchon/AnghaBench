
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sqlca_t {int dummy; } ;
struct connection {struct connection* next; } ;


 int ECPG_OUT_OF_MEMORY ;
 int ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY ;
 struct sqlca_t* ECPGget_sqlca () ;
 struct connection* all_connections ;
 int connections_mutex ;
 int ecpg_finish (struct connection*) ;
 struct connection* ecpg_get_connection_nr (char const*) ;
 int ecpg_init (struct connection*,char const*,int) ;
 int ecpg_init_sqlca (struct sqlca_t*) ;
 int ecpg_raise (int,int ,int ,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ strcmp (char const*,char*) ;

bool
ECPGdisconnect(int lineno, const char *connection_name)
{
 struct sqlca_t *sqlca = ECPGget_sqlca();
 struct connection *con;

 if (sqlca == ((void*)0))
 {
  ecpg_raise(lineno, ECPG_OUT_OF_MEMORY,
       ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY, ((void*)0));
  return 0;
 }





 if (strcmp(connection_name, "ALL") == 0)
 {
  ecpg_init_sqlca(sqlca);
  for (con = all_connections; con;)
  {
   struct connection *f = con;

   con = con->next;
   ecpg_finish(f);
  }
 }
 else
 {
  con = ecpg_get_connection_nr(connection_name);

  if (!ecpg_init(con, connection_name, lineno))
  {



   return 0;
  }
  else
   ecpg_finish(con);
 }





 return 1;
}
