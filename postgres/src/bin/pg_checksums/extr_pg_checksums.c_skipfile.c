
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** skip ;
 scalar_t__ strcmp (char const* const,char const*) ;

__attribute__((used)) static bool
skipfile(const char *fn)
{
 const char *const *f;

 for (f = skip; *f; f++)
  if (strcmp(*f, fn) == 0)
   return 1;

 return 0;
}
