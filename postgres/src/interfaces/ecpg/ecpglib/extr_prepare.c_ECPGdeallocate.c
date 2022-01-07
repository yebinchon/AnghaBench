
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prepared_statement {int dummy; } ;
struct connection {int dummy; } ;


 int ECPG_INVALID_STMT ;
 int ECPG_SQLSTATE_INVALID_SQL_STATEMENT_NAME ;
 scalar_t__ INFORMIX_MODE (int) ;
 int deallocate_one (int,int,struct connection*,struct prepared_statement*,struct prepared_statement*) ;
 struct prepared_statement* ecpg_find_prepared_statement (char const*,struct connection*,struct prepared_statement**) ;
 struct connection* ecpg_get_connection (char const*) ;
 int ecpg_init (struct connection*,char const*,int) ;
 int ecpg_raise (int,int ,int ,char const*) ;

bool
ECPGdeallocate(int lineno, int c, const char *connection_name, const char *name)
{
 struct connection *con;
 struct prepared_statement *this,
      *prev;

 con = ecpg_get_connection(connection_name);
 if (!ecpg_init(con, connection_name, lineno))
  return 0;

 this = ecpg_find_prepared_statement(name, con, &prev);
 if (this)
  return deallocate_one(lineno, c, con, prev, this);


 if (INFORMIX_MODE(c))
  return 1;
 ecpg_raise(lineno, ECPG_INVALID_STMT, ECPG_SQLSTATE_INVALID_SQL_STATEMENT_NAME, name);
 return 0;
}
