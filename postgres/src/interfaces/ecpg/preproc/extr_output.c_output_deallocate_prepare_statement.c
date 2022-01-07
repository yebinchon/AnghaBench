
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int base_yyout ;
 int compat ;
 char* connection ;
 int fprintf (int ,char*,int,char const*) ;
 int fputs (char*,int ) ;
 int free (char*) ;
 int output_escaped_str (char*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int whenever_action (int) ;

void
output_deallocate_prepare_statement(char *name)
{
 const char *con = connection ? connection : "NULL";

 if (strcmp(name, "all") != 0)
 {
  fprintf(base_yyout, "{ ECPGdeallocate(__LINE__, %d, %s, ", compat, con);
  output_escaped_str(name, 1);
  fputs(");", base_yyout);
 }
 else
  fprintf(base_yyout, "{ ECPGdeallocate_all(__LINE__, %d, %s);", compat, con);

 whenever_action(2);
 free(name);
 if (connection != ((void*)0))
  free(connection);
 connection = ((void*)0);
}
