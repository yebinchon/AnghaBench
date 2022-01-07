
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line; } ;


 int addr ;
 char* delspc (char const*) ;
 int fprintf (int ,char*,int,int,...) ;
 int rd_expr_unequal (char const**,int*,int,int*,int) ;
 size_t sp ;
 TYPE_1__* stack ;
 int stderr ;
 int verbose ;

__attribute__((used)) static int
rd_expr_equal (const char **p, int *valid, int level, int *check,
        int print_errors)
{
  int result;
  if (verbose >= 6)
    fprintf (stderr, "%5d (0x%04x): Starting to read equality epression "
      "(string=%s).\n", stack[sp].line, addr, *p);
  result = rd_expr_unequal (p, valid, level, check, print_errors);
  *p = delspc (*p);
  if (**p == '=')
    {
      *check = 0;
      ++*p;
      if (**p == '=')
 ++ * p;
      return result == rd_expr_equal (p, valid, level, check, print_errors);
    }
  else if (**p == '!' && (*p)[1] == '=')
    {
      *check = 0;
      (*p) += 2;
      return result != rd_expr_equal (p, valid, level, check, print_errors);
    }
  if (verbose >= 7)
    fprintf (stderr, "%5d (0x%04x): rd_equal returned %d (%04x).\n",
      stack[sp].line, addr, result, result);
  return result;
}
