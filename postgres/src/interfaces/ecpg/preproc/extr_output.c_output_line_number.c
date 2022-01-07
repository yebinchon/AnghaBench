
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int base_yyout ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 char* hashline_number () ;

void
output_line_number(void)
{
 char *line = hashline_number();

 fprintf(base_yyout, "%s", line);
 free(line);
}
