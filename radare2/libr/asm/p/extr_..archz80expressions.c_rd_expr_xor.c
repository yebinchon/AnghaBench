
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line; } ;


 int addr ;
 char* delspc (char const*) ;
 int fprintf (int ,char*,int,int,...) ;
 int rd_expr_and (char const**,int*,int,int*,int) ;
 size_t sp ;
 TYPE_1__* stack ;
 int stderr ;
 int verbose ;

__attribute__((used)) static int
rd_expr_xor (const char **p, int *valid, int level, int *check,
      int print_errors)
{
  int result;
  if (verbose >= 6)
    fprintf (stderr, "%5d (0x%04x): Starting to read xor expression "
      "(string=%s).\n", stack[sp].line, addr, *p);
  result = rd_expr_and (p, valid, level, check, print_errors);
  if (verbose >= 7)
    fprintf (stderr, "%5d (0x%04x): rd_expr_xor: rd_expr_and returned %d "
      "(%04x).\n", stack[sp].line, addr, result, result);
  *p = delspc (*p);
  if (**p == '^')
    {
      *check = 0;
      (*p)++;
      result ^= rd_expr_xor (p, valid, level, check, print_errors);
    }
  if (verbose >= 7)
    fprintf (stderr, "%5d (0x%04x): rd_expr_xor returned %d (%04x).\n",
      stack[sp].line, addr, result, result);
  return result;
}
