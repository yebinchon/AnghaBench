
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct statement {int dummy; } ;
typedef enum ECPG_statement_type { ____Placeholder_ECPG_statement_type } ECPG_statement_type ;


 int ecpg_autostart_transaction (struct statement*) ;
 int ecpg_build_params (struct statement*) ;
 int ecpg_do_epilogue (struct statement*) ;
 int ecpg_do_prologue (int const,int const,int const,char const*,int const,int,char const*,int ,struct statement**) ;
 int ecpg_execute (struct statement*) ;
 int ecpg_process_output (struct statement*,int) ;

bool
ecpg_do(const int lineno, const int compat, const int force_indicator, const char *connection_name, const bool questionmarks, const int st, const char *query, va_list args)
{
 struct statement *stmt = ((void*)0);

 if (!ecpg_do_prologue(lineno, compat, force_indicator, connection_name,
        questionmarks, (enum ECPG_statement_type) st,
        query, args, &stmt))
  goto fail;

 if (!ecpg_build_params(stmt))
  goto fail;

 if (!ecpg_autostart_transaction(stmt))
  goto fail;

 if (!ecpg_execute(stmt))
  goto fail;

 if (!ecpg_process_output(stmt, 1))
  goto fail;

 ecpg_do_epilogue(stmt);
 return 1;

fail:
 ecpg_do_epilogue(stmt);
 return 0;
}
