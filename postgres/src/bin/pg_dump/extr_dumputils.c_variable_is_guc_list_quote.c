
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pg_strcasecmp (char const*,char*) ;

bool
variable_is_guc_list_quote(const char *name)
{
 if (pg_strcasecmp(name, "temp_tablespaces") == 0 ||
  pg_strcasecmp(name, "session_preload_libraries") == 0 ||
  pg_strcasecmp(name, "shared_preload_libraries") == 0 ||
  pg_strcasecmp(name, "local_preload_libraries") == 0 ||
  pg_strcasecmp(name, "search_path") == 0)
  return 1;
 else
  return 0;
}
