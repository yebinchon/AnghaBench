
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line; } ;


 int addr ;
 int fprintf (int ,char*,int,int,char const*) ;
 int isalnum (unsigned char const) ;
 scalar_t__ isalpha (unsigned char const) ;
 int printerr (int,char*) ;
 int rd_number (char const**,int *,char) ;
 size_t sp ;
 TYPE_1__* stack ;
 int stderr ;
 char tolower (unsigned char) ;
 int verbose ;

__attribute__((used)) static int
rd_otherbasenumber (const char **p, int *valid, int print_errors)
{
  char c;
  if (verbose >= 6)
    fprintf (stderr,
      "%5d (0x%04x): Starting to read basenumber (string=%s).\n",
      stack[sp].line, addr, *p);
  (*p)++;
  if (!**p)
    {
      if (valid)
 *valid = 0;
      else if (print_errors)
 printerr (1, "unexpected end of line after `@'\n");
      return 0;
    }
  if (**p == '0' || !isalnum ((const unsigned char)**p))
    {
      if (valid)
 *valid = 0;
      else if (print_errors)
 printerr (1, "base must be between 1 and z\n");
      return 0;
    }
  c = **p;
  (*p)++;
  if (isalpha ((const unsigned char)**p))
    return rd_number (p, ((void*)0), tolower ((unsigned char)c) - 'a' + 1);
  return rd_number (p, ((void*)0), c - '0' + 1);
}
