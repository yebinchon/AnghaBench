
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct label {int value; } ;
struct TYPE_2__ {int line; int labels; } ;


 int addr ;
 scalar_t__ check_label (int ,char const**,struct label**,struct label**,int ) ;
 int fprintf (int ,char*,...) ;
 int printerr (int,char*,int,char const*) ;
 size_t sp ;
 TYPE_1__* stack ;
 int stderr ;
 int verbose ;

__attribute__((used)) static int
rd_label (const char **p, int *exists, struct label **previous, int level,
   int print_errors)
{
  struct label *l = ((void*)0);
  int s;
  if (exists)
    *exists = 0;
  if (previous)
    *previous = ((void*)0);
  if (verbose >= 6)
    fprintf (stderr, "%5d (0x%04x): Starting to read label (string=%s).\n",
      stack[sp].line, addr, *p);
  for (s = level; s >= 0; --s)
    {
      if (check_label (stack[s].labels, p, &l,
         (**p == '.' && s == sp) ? previous : ((void*)0), 0))
 break;
    }
  if (s < 0)
    {

      const char *old_p = *p;


   if (!exists && print_errors)
     printerr (1, "using undefined label %.*s\n", *p - old_p, old_p);

   if (verbose >= 7)
     fprintf (stderr, "rd_label returns invalid value\n");
   return l != ((void*)0);
    }
  if (exists)
    *exists = 1;
  if (verbose >= 7)
    fprintf (stderr, "rd_label returns valid value 0x%x\n", l->value);
  return l->value;
}
