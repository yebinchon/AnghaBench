
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ code; } ;


 scalar_t__ W_NOTHING ;
 int base_yyout ;
 int fprintf (int ,char*) ;
 int fputc (char,int ) ;
 int output_line_number () ;
 int print_action (TYPE_1__*) ;
 TYPE_1__ when_error ;
 TYPE_1__ when_nf ;
 TYPE_1__ when_warn ;

void
whenever_action(int mode)
{
 if ((mode & 1) == 1 && when_nf.code != W_NOTHING)
 {
  output_line_number();
  fprintf(base_yyout, "\nif (sqlca.sqlcode == ECPG_NOT_FOUND) ");
  print_action(&when_nf);
 }
 if (when_warn.code != W_NOTHING)
 {
  output_line_number();
  fprintf(base_yyout, "\nif (sqlca.sqlwarn[0] == 'W') ");
  print_action(&when_warn);
 }
 if (when_error.code != W_NOTHING)
 {
  output_line_number();
  fprintf(base_yyout, "\nif (sqlca.sqlcode < 0) ");
  print_action(&when_error);
 }

 if ((mode & 2) == 2)
  fputc('}', base_yyout);

 output_line_number();
}
