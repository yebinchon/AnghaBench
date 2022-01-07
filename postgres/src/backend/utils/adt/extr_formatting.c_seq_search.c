
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALL_LOWER ;
 int ALL_UPPER ;
 int DEBUG_elog_output ;
 int ONE_UPPER ;
 int elog (int ,char*,char,char const,char const* const,char*) ;
 char pg_tolower (unsigned char) ;
 char pg_toupper (unsigned char) ;

__attribute__((used)) static int
seq_search(char *name, const char *const *array, int type, int max, int *len)
{
 const char *p;
 const char *const *a;
 char *n;
 int last,
    i;

 *len = 0;

 if (!*name)
  return -1;


 if (type == ONE_UPPER || type == ALL_UPPER)
  *name = pg_toupper((unsigned char) *name);
 else if (type == ALL_LOWER)
  *name = pg_tolower((unsigned char) *name);

 for (last = 0, a = array; *a != ((void*)0); a++)
 {

  if (*name != **a)
   continue;

  for (i = 1, p = *a + 1, n = name + 1;; n++, p++, i++)
  {

   if (max && i == max)
   {
    *len = i;
    return a - array;
   }

   if (*p == '\0')
   {
    *len = i;
    return a - array;
   }

   if (*n == '\0')
    break;




   if (i > last)
   {
    if (type == ONE_UPPER || type == ALL_LOWER)
     *n = pg_tolower((unsigned char) *n);
    else if (type == ALL_UPPER)
     *n = pg_toupper((unsigned char) *n);
    last = i;
   }





   if (*n != *p)
    break;
  }
 }

 return -1;
}
