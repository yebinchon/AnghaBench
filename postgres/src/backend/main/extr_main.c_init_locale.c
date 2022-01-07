
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FATAL ;
 int elog (int ,char*,char const*,char const*) ;
 int * pg_perm_setlocale (int,char const*) ;

__attribute__((used)) static void
init_locale(const char *categoryname, int category, const char *locale)
{
 if (pg_perm_setlocale(category, locale) == ((void*)0) &&
  pg_perm_setlocale(category, "C") == ((void*)0))
  elog(FATAL, "could not adopt \"%s\" locale nor C locale for %s",
    locale, categoryname);
}
