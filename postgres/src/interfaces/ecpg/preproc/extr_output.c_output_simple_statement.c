
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int output_escaped_str (char*,int) ;
 int output_line_number () ;
 int whenever_action (int) ;

void
output_simple_statement(char *stmt, int whenever_mode)
{
 output_escaped_str(stmt, 0);
 if (whenever_mode)
  whenever_action(whenever_mode);
 output_line_number();
 free(stmt);
}
