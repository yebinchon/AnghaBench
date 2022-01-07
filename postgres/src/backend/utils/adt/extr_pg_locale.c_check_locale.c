
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARNING ;
 int elog (int ,char*,char*) ;
 int pfree (char*) ;
 char* pstrdup (char*) ;
 char* setlocale (int,char const*) ;

bool
check_locale(int category, const char *locale, char **canonname)
{
 char *save;
 char *res;

 if (canonname)
  *canonname = ((void*)0);

 save = setlocale(category, ((void*)0));
 if (!save)
  return 0;


 save = pstrdup(save);


 res = setlocale(category, locale);


 if (res && canonname)
  *canonname = pstrdup(res);


 if (!setlocale(category, save))
  elog(WARNING, "failed to restore old locale \"%s\"", save);
 pfree(save);

 return (res != ((void*)0));
}
