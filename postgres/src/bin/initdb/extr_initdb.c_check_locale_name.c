
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int free (char*) ;
 int pg_log_error (char*,...) ;
 char* pg_strdup (char*) ;
 char* setlocale (int,char const*) ;

__attribute__((used)) static void
check_locale_name(int category, const char *locale, char **canonname)
{
 char *save;
 char *res;

 if (canonname)
  *canonname = ((void*)0);

 save = setlocale(category, ((void*)0));
 if (!save)
 {
  pg_log_error("setlocale() failed");
  exit(1);
 }


 save = pg_strdup(save);


 if (!locale)
  locale = "";


 res = setlocale(category, locale);


 if (res && canonname)
  *canonname = pg_strdup(res);


 if (!setlocale(category, save))
 {
  pg_log_error("failed to restore old locale \"%s\"", save);
  exit(1);
 }
 free(save);


 if (res == ((void*)0))
 {
  if (*locale)
   pg_log_error("invalid locale name \"%s\"", locale);
  else
  {
   pg_log_error("invalid locale settings; check LANG and LC_* environment variables");
  }
  exit(1);
 }
}
