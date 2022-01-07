
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prepared_statement {int dummy; } ;
struct connection {int dummy; } ;


 int ECPG_COMPAT_PGSQL ;
 int deallocate_one (int,int ,struct connection*,struct prepared_statement*,struct prepared_statement*) ;
 struct prepared_statement* ecpg_find_prepared_statement (char const*,struct connection*,struct prepared_statement**) ;
 struct connection* ecpg_get_connection (char const*) ;
 int ecpg_init (struct connection*,char const*,int) ;
 int prepare_common (int,struct connection*,char const*,char const*) ;

bool
ECPGprepare(int lineno, const char *connection_name, const bool questionmarks,
   const char *name, const char *variable)
{
 struct connection *con;
 struct prepared_statement *this,
      *prev;

 (void) questionmarks;

 con = ecpg_get_connection(connection_name);
 if (!ecpg_init(con, connection_name, lineno))
  return 0;


 this = ecpg_find_prepared_statement(name, con, &prev);
 if (this && !deallocate_one(lineno, ECPG_COMPAT_PGSQL, con, prev, this))
  return 0;

 return prepare_common(lineno, con, name, variable);
}
