
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_mblen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static bool
match_prosrc_to_literal(const char *prosrc, const char *literal,
      int cursorpos, int *newcursorpos)
{
 int newcp = cursorpos;
 int chlen;
 while (*prosrc)
 {
  cursorpos--;





  if (*literal == '\\')
  {
   literal++;
   if (cursorpos > 0)
    newcp++;
  }
  else if (*literal == '\'')
  {
   if (literal[1] != '\'')
    goto fail;
   literal++;
   if (cursorpos > 0)
    newcp++;
  }
  chlen = pg_mblen(prosrc);
  if (strncmp(prosrc, literal, chlen) != 0)
   goto fail;
  prosrc += chlen;
  literal += chlen;
 }

 if (*literal == '\'' && literal[1] != '\'')
 {

  *newcursorpos = newcp;
  return 1;
 }

fail:

 *newcursorpos = newcp;
 return 0;
}
