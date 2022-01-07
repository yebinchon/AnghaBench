
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ECPG_statement_type { ____Placeholder_ECPG_statement_type } ECPG_statement_type ;


 int ECPGst_exec_immediate ;
 int ECPGst_execute ;
 int ECPGst_normal ;
 int ECPGst_prepnormal ;
 int argsinsert ;
 int argsresult ;
 int auto_prepare ;
 int base_yyout ;
 int compat ;
 char* connection ;
 int dump_variables (int ,int) ;
 char** ecpg_statement_type_name ;
 int force_indicator ;
 int fprintf (int ,char*,...) ;
 int fputs (char*,int ) ;
 int free (char*) ;
 int output_escaped_str (char*,int) ;
 int questionmarks ;
 int reset_variables () ;
 int whenever_action (int) ;

void
output_statement(char *stmt, int whenever_mode, enum ECPG_statement_type st)
{
 fprintf(base_yyout, "{ ECPGdo(__LINE__, %d, %d, %s, %d, ", compat, force_indicator, connection ? connection : "NULL", questionmarks);

 if (st == ECPGst_prepnormal && !auto_prepare)
  st = ECPGst_normal;






 fprintf(base_yyout, "%s, ", ecpg_statement_type_name[st]);
 if (st == ECPGst_execute || st == ECPGst_exec_immediate)
  fprintf(base_yyout, "%s, ", stmt);
 else
 {
  fputs("\"", base_yyout);
  output_escaped_str(stmt, 0);
  fputs("\", ", base_yyout);
 }


 dump_variables(argsinsert, 1);
 fputs("ECPGt_EOIT, ", base_yyout);
 dump_variables(argsresult, 1);
 fputs("ECPGt_EORT);", base_yyout);
 reset_variables();

 whenever_action(whenever_mode | 2);
 free(stmt);
 if (connection != ((void*)0))
  free(connection);
 connection = ((void*)0);
}
