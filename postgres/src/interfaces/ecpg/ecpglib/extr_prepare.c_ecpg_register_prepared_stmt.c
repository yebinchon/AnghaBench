
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statement {int lineno; void* name; int * outlist; int inlist; void* command; struct connection* connection; } ;
struct prepared_statement {int prepared; struct prepared_statement* next; struct statement* stmt; void* name; } ;
struct connection {struct prepared_statement* prep_stmts; } ;


 int ECPG_COMPAT_PGSQL ;
 int deallocate_one (int,int ,struct connection*,struct prepared_statement*,struct prepared_statement*) ;
 scalar_t__ ecpg_alloc (int,int) ;
 struct prepared_statement* ecpg_find_prepared_statement (void*,struct connection*,struct prepared_statement**) ;
 int ecpg_free (struct prepared_statement*) ;
 void* ecpg_strdup (void*,int) ;
 int memset (struct statement*,int ,int) ;

bool
ecpg_register_prepared_stmt(struct statement *stmt)
{
 struct statement *prep_stmt;
 struct prepared_statement *this;
 struct connection *con = stmt->connection;
 struct prepared_statement *prev = ((void*)0);
 int lineno = stmt->lineno;


 this = ecpg_find_prepared_statement(stmt->name, con, &prev);
 if (this && !deallocate_one(lineno, ECPG_COMPAT_PGSQL, con, prev, this))
  return 0;


 this = (struct prepared_statement *) ecpg_alloc(sizeof(struct prepared_statement), lineno);
 if (!this)
  return 0;

 prep_stmt = (struct statement *) ecpg_alloc(sizeof(struct statement), lineno);
 if (!prep_stmt)
 {
  ecpg_free(this);
  return 0;
 }
 memset(prep_stmt, 0, sizeof(struct statement));


 prep_stmt->lineno = lineno;
 prep_stmt->connection = con;
 prep_stmt->command = ecpg_strdup(stmt->command, lineno);
 prep_stmt->inlist = prep_stmt->outlist = ((void*)0);
 this->name = ecpg_strdup(stmt->name, lineno);
 this->stmt = prep_stmt;
 this->prepared = 1;

 if (con->prep_stmts == ((void*)0))
  this->next = ((void*)0);
 else
  this->next = con->prep_stmts;

 con->prep_stmts = this;
 return 1;
}
