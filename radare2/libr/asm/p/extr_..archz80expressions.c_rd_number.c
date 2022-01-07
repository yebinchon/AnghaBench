
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line; } ;


 int addr ;
 char* delspc (char const*) ;
 int fprintf (int ,char*,int,int,int,...) ;
 size_t sp ;
 TYPE_1__* stack ;
 int stderr ;
 char* strchr (char*,int ) ;
 int tolower (unsigned char const) ;
 int verbose ;

__attribute__((used)) static int
rd_number (const char **p, const char **endp, int base)
{
  int result = 0, i;
  char *c, num[] = "0123456789abcdefghijklmnopqrstuvwxyz";
  if (verbose >= 6)
    fprintf (stderr, "%5d (0x%04x): Starting to read number of base %d"
      "(string=%s).\n", stack[sp].line, addr, base, *p);
  num[base] = '\0';
  *p = delspc (*p);
  while (**p && (c = strchr (num, tolower ((const unsigned char)**p))))
    {
      i = c - num;
      if (verbose >= 7)
 fprintf (stderr, "%5d (0x%04x): Digit found:%1x.\n", stack[sp].line,
   addr, i);
      result = result * base + i;
      (*p)++;
    }
  if (endp)
    *endp = *p;
  *p = delspc (*p);
  if (verbose >= 7)
    fprintf (stderr, "%5d (0x%04x): rd_number returned %d (%04x).\n",
      stack[sp].line, addr, result, result);
  return result;
}
