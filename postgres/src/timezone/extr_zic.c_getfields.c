
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int _ (char*) ;
 char** emalloc (int ) ;
 int error (int ) ;
 int exit (int ) ;
 scalar_t__ is_space (char) ;
 int size_product (scalar_t__,int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static char **
getfields(char *cp)
{
 char *dp;
 char **array;
 int nsubs;

 if (cp == ((void*)0))
  return ((void*)0);
 array = emalloc(size_product(strlen(cp) + 1, sizeof *array));
 nsubs = 0;
 for (;;)
 {
  while (is_space(*cp))
   ++cp;
  if (*cp == '\0' || *cp == '#')
   break;
  array[nsubs++] = dp = cp;
  do
  {
   if ((*dp = *cp++) != '"')
    ++dp;
   else
    while ((*dp = *cp++) != '"')
     if (*dp != '\0')
      ++dp;
     else
     {
      error(_("Odd number of quotation marks"));
      exit(EXIT_FAILURE);
     }
  } while (*cp && *cp != '#' && !is_space(*cp));
  if (is_space(*cp))
   ++cp;
  *dp = '\0';
 }
 array[nsubs] = ((void*)0);
 return array;
}
