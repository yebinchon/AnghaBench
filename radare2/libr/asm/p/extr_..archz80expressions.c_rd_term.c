
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line; } ;


 int addr ;
 char* delspc (char const*) ;
 int fprintf (int ,char*,int,int,...) ;
 int rd_factor (char const**,int*,int,int*,int) ;
 size_t sp ;
 TYPE_1__* stack ;
 int stderr ;
 int verbose ;

__attribute__((used)) static int
rd_term (const char **p, int *valid, int level, int *check, int print_errors)
{

  int result;
  if (verbose >= 6)
    fprintf (stderr, "%5d (0x%04x): Starting to read term (string=%s).\n",
      stack[sp].line, addr, *p);
  result = rd_factor (p, valid, level, check, print_errors);
  *p = delspc (*p);
  while (**p == '+' || **p == '-')
    {
      *check = 0;
      if (**p == '+')
 {
   (*p)++;
   result += rd_factor (p, valid, level, check, print_errors);
 }
      else if (**p == '-')
 {
   (*p)++;
   result -= rd_factor (p, valid, level, check, print_errors);
 }
      *p = delspc (*p);
    }
  if (verbose >= 7)
    fprintf (stderr, "%5d (0x%04x): rd_term returned %d (%04x).\n",
      stack[sp].line, addr, result, result);
  return result;
}
