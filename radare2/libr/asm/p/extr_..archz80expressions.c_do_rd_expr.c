
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line; } ;


 int addr ;
 char* delspc (char const*) ;
 int fprintf (int ,char*,int,int,...) ;
 int printerr (int,char*,char const*) ;
 int rd_expr_or (char const**,int*,int,int*,int) ;
 size_t sp ;
 TYPE_1__* stack ;
 int stderr ;
 int verbose ;

__attribute__((used)) static int
do_rd_expr (const char **p, char delimiter, int *valid, int level, int *check,
     int print_errors)
{

  int result = 0;
  if (verbose >= 6)
    fprintf (stderr,
      "%5d (0x%04x): Starting to read expression "
      "(string=%s, delimiter=%c).\n", stack[sp].line, addr, *p,
      delimiter ? delimiter : ' ');
  *p = delspc (*p);
  if (!**p || **p == delimiter)
    {
      if (valid)
 *valid = 0;
      else if (print_errors)
 printerr (1, "expression expected (not %s)\n", *p);
      return 0;
    }
  result = rd_expr_or (p, valid, level, check, print_errors);
  *p = delspc (*p);
  if (**p == '?')
    {
      *check = 0;
      (*p)++;
      if (result)
 {
   result = do_rd_expr (p, ':', valid, level, check, print_errors);
   if (**p)
     (*p)++;
   do_rd_expr (p, delimiter, valid, level, check, print_errors);
 }
      else
 {
   do_rd_expr (p, ':', valid, level, check, print_errors);
   if (**p)
     (*p)++;
   result = do_rd_expr (p, delimiter, valid, level, check,
          print_errors);
 }
    }
  *p = delspc (*p);
  if (**p && **p != delimiter)
    {
      if (valid)
 *valid = 0;
      else if (print_errors)
 printerr (1, "junk at end of expression: %s\n", *p);
    }
  if (verbose >= 7)
    {
      fprintf (stderr, "%5d (0x%04x): rd_expr returned %d (%04x).\n",
        stack[sp].line, addr, result, result);
      if (valid && !*valid)
 fprintf (stderr, "%5d (0x%04x): Returning invalid result.\n",
   stack[sp].line, addr);
    }
  return result;
}
