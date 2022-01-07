
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sqlca_t {int dummy; } ;
struct connection {int dummy; } ;


 int ECPG_NO_CONN ;
 int ECPG_OUT_OF_MEMORY ;
 int ECPG_SQLSTATE_CONNECTION_DOES_NOT_EXIST ;
 int ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY ;
 struct sqlca_t* ECPGget_sqlca () ;
 char const* ecpg_gettext (char*) ;
 int ecpg_init_sqlca (struct sqlca_t*) ;
 int ecpg_raise (int const,int ,int ,char const*) ;

bool
ecpg_init(const struct connection *con, const char *connection_name, const int lineno)
{
 struct sqlca_t *sqlca = ECPGget_sqlca();

 if (sqlca == ((void*)0))
 {
  ecpg_raise(lineno, ECPG_OUT_OF_MEMORY, ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY,
       ((void*)0));
  return 0;
 }

 ecpg_init_sqlca(sqlca);
 if (con == ((void*)0))
 {
  ecpg_raise(lineno, ECPG_NO_CONN, ECPG_SQLSTATE_CONNECTION_DOES_NOT_EXIST,
       connection_name ? connection_name : ecpg_gettext("NULL"));
  return 0;
 }

 return 1;
}
