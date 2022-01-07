
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct statement {scalar_t__ nparams; scalar_t__ statement_type; int compat; TYPE_1__* connection; int lineno; int results; scalar_t__ paramformats; scalar_t__ paramlengths; scalar_t__ paramvalues; int command; int name; } ;
struct TYPE_2__ {int connection; int name; } ;


 scalar_t__ ECPGst_execute ;
 scalar_t__ ECPGst_prepare ;
 int PQexec (int ,int ) ;
 int PQexecParams (int ,int ,scalar_t__,int *,char const* const*,int const*,int const*,int ) ;
 int PQexecPrepared (int ,int ,scalar_t__,char const* const*,int const*,int const*,int ) ;
 int ecpg_check_PQresult (int ,int ,int ,int ) ;
 int ecpg_free_params (struct statement*,int) ;
 int ecpg_log (char*,int ,...) ;
 int ecpg_register_prepared_stmt (struct statement*) ;

bool
ecpg_execute(struct statement *stmt)
{
 ecpg_log("ecpg_execute on line %d: query: %s; with %d parameter(s) on connection %s\n", stmt->lineno, stmt->command, stmt->nparams, stmt->connection->name);
 if (stmt->statement_type == ECPGst_execute)
 {
  stmt->results = PQexecPrepared(stmt->connection->connection,
            stmt->name,
            stmt->nparams,
            (const char *const *) stmt->paramvalues,
            (const int *) stmt->paramlengths,
            (const int *) stmt->paramformats,
            0);
  ecpg_log("ecpg_execute on line %d: using PQexecPrepared for \"%s\"\n", stmt->lineno, stmt->command);
 }
 else
 {
  if (stmt->nparams == 0)
  {
   stmt->results = PQexec(stmt->connection->connection, stmt->command);
   ecpg_log("ecpg_execute on line %d: using PQexec\n", stmt->lineno);
  }
  else
  {
   stmt->results = PQexecParams(stmt->connection->connection,
           stmt->command, stmt->nparams, ((void*)0),
           (const char *const *) stmt->paramvalues,
           (const int *) stmt->paramlengths,
           (const int *) stmt->paramformats,
           0);

   ecpg_log("ecpg_execute on line %d: using PQexecParams\n", stmt->lineno);
  }

  if (stmt->statement_type == ECPGst_prepare)
  {
   if (!ecpg_register_prepared_stmt(stmt))
   {
    ecpg_free_params(stmt, 1);
    return 0;
   }
  }
 }

 ecpg_free_params(stmt, 1);

 if (!ecpg_check_PQresult(stmt->results, stmt->lineno, stmt->connection->connection, stmt->compat))
  return 0;

 return 1;
}
