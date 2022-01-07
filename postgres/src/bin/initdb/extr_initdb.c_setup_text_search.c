
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 char* default_text_search_config ;
 void* find_matching_ts_config (int ) ;
 int lc_ctype ;
 int pg_log_info (char*,int ) ;
 int pg_log_warning (char*,char*,...) ;
 int printf (char*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;

void
setup_text_search(void)
{
 if (!default_text_search_config)
 {
  default_text_search_config = find_matching_ts_config(lc_ctype);
  if (!default_text_search_config)
  {
   pg_log_info("could not find suitable text search configuration for locale \"%s\"",
      lc_ctype);
   default_text_search_config = "simple";
  }
 }
 else
 {
  const char *checkmatch = find_matching_ts_config(lc_ctype);

  if (checkmatch == ((void*)0))
  {
   pg_log_warning("suitable text search configuration for locale \"%s\" is unknown",
         lc_ctype);
  }
  else if (strcmp(checkmatch, default_text_search_config) != 0)
  {
   pg_log_warning("specified text search configuration \"%s\" might not match locale \"%s\"",
         default_text_search_config, lc_ctype);
  }
 }

 printf(_("The default text search configuration will be set to \"%s\".\n"),
     default_text_search_config);

}
