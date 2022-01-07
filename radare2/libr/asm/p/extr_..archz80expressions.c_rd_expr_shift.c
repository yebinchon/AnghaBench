
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line; } ;


 int addr ;
 char* delspc (char const*) ;
 int fprintf (int ,char*,int,int,...) ;
 int rd_term (char const**,int*,int,int*,int) ;
 size_t sp ;
 TYPE_1__* stack ;
 int stderr ;
 int verbose ;

__attribute__((used)) static int
rd_expr_shift (const char **p, int *valid, int level, int *check,
        int print_errors)
{
  int result;
  if (verbose >= 6)
    fprintf (stderr, "%5d (0x%04x): Starting to read shift expression "
      "(string=%s).\n", stack[sp].line, addr, *p);
  result = rd_term (p, valid, level, check, print_errors);
  *p = delspc (*p);
  while ((**p == '<' || **p == '>') && (*p)[1] == **p)
    {
      *check = 0;
      if (**p == '<')
 {
   (*p) += 2;
   result <<= rd_term (p, valid, level, check, print_errors);
 }
      else if (**p == '>')
 {
   (*p) += 2;
   result >>= rd_term (p, valid, level, check, print_errors);
 }
      *p = delspc (*p);
    }
  if (verbose >= 7)
    fprintf (stderr, "%5d (0x%04x): rd_shift returned %d (%04x).\n",
      stack[sp].line, addr, result, result);
  return result;
}
