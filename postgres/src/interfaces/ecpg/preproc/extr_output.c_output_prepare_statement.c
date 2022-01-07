
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int base_yyout ;
 char* connection ;
 int fprintf (int ,char*,char*,int) ;
 int fputs (char*,int ) ;
 int free (char*) ;
 int output_escaped_str (char*,int) ;
 int questionmarks ;
 int whenever_action (int) ;

void
output_prepare_statement(char *name, char *stmt)
{
 fprintf(base_yyout, "{ ECPGprepare(__LINE__, %s, %d, ", connection ? connection : "NULL", questionmarks);
 output_escaped_str(name, 1);
 fputs(", ", base_yyout);
 output_escaped_str(stmt, 1);
 fputs(");", base_yyout);
 whenever_action(2);
 free(name);
 if (connection != ((void*)0))
  free(connection);
 connection = ((void*)0);
}
