
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_fatal (char*,...) ;
 int pg_free (char*) ;
 char* pg_strdup (char*) ;
 char* setlocale (int,char const*) ;

__attribute__((used)) static char *
get_canonical_locale_name(int category, const char *locale)
{
 char *save;
 char *res;


 save = setlocale(category, ((void*)0));
 if (!save)
  pg_fatal("failed to get the current locale\n");


 save = pg_strdup(save);


 res = setlocale(category, locale);

 if (!res)
  pg_fatal("failed to get system locale name for \"%s\"\n", locale);

 res = pg_strdup(res);


 if (!setlocale(category, save))
  pg_fatal("failed to restore old locale \"%s\"\n", save);

 pg_free(save);

 return res;
}
