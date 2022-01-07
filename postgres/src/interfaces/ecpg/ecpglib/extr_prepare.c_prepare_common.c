
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statement {int lineno; int prepared; struct statement* next; struct statement* command; struct statement* name; int compat; struct connection* connection; struct statement* stmt; int * outlist; int inlist; } ;
struct prepared_statement {int lineno; int prepared; struct prepared_statement* next; struct prepared_statement* command; struct prepared_statement* name; int compat; struct connection* connection; struct prepared_statement* stmt; int * outlist; int inlist; } ;
struct connection {struct statement* prep_stmts; int connection; } ;
typedef int PGresult ;


 int PQclear (int *) ;
 int * PQprepare (int ,char const*,struct statement*,int ,int *) ;
 scalar_t__ ecpg_alloc (int,int) ;
 int ecpg_check_PQresult (int *,int,int ,int ) ;
 int ecpg_free (struct statement*) ;
 int ecpg_log (char*,int,char const*,struct statement*) ;
 void* ecpg_strdup (char const*,int) ;
 int replace_variables (struct statement**,int) ;

__attribute__((used)) static bool
prepare_common(int lineno, struct connection *con, const char *name, const char *variable)
{
 struct statement *stmt;
 struct prepared_statement *this;
 PGresult *query;


 this = (struct prepared_statement *) ecpg_alloc(sizeof(struct prepared_statement), lineno);
 if (!this)
  return 0;

 stmt = (struct statement *) ecpg_alloc(sizeof(struct statement), lineno);
 if (!stmt)
 {
  ecpg_free(this);
  return 0;
 }


 stmt->lineno = lineno;
 stmt->connection = con;
 stmt->command = ecpg_strdup(variable, lineno);
 stmt->inlist = stmt->outlist = ((void*)0);


 replace_variables(&(stmt->command), lineno);


 this->name = ecpg_strdup(name, lineno);
 this->stmt = stmt;


 query = PQprepare(stmt->connection->connection, name, stmt->command, 0, ((void*)0));
 if (!ecpg_check_PQresult(query, stmt->lineno, stmt->connection->connection, stmt->compat))
 {
  ecpg_free(stmt->command);
  ecpg_free(this->name);
  ecpg_free(this);
  ecpg_free(stmt);
  return 0;
 }

 ecpg_log("prepare_common on line %d: name %s; query: \"%s\"\n", stmt->lineno, name, stmt->command);
 PQclear(query);
 this->prepared = 1;

 if (con->prep_stmts == ((void*)0))
  this->next = ((void*)0);
 else
  this->next = con->prep_stmts;

 con->prep_stmts = this;
 return 1;
}
