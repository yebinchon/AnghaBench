
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* tsconfname; int langname; } ;


 int free (char*) ;
 scalar_t__ pg_strcasecmp (int ,char*) ;
 char* pg_strdup (char const*) ;
 TYPE_1__* tsearch_config_languages ;

__attribute__((used)) static const char *
find_matching_ts_config(const char *lc_type)
{
 int i;
 char *langname,
      *ptr;
 if (lc_type == ((void*)0))
  langname = pg_strdup("");
 else
 {
  ptr = langname = pg_strdup(lc_type);
  while (*ptr &&
      *ptr != '_' && *ptr != '-' && *ptr != '.' && *ptr != '@')
   ptr++;
  *ptr = '\0';
 }

 for (i = 0; tsearch_config_languages[i].tsconfname; i++)
 {
  if (pg_strcasecmp(tsearch_config_languages[i].langname, langname) == 0)
  {
   free(langname);
   return tsearch_config_languages[i].tsconfname;
  }
 }

 free(langname);
 return ((void*)0);
}
