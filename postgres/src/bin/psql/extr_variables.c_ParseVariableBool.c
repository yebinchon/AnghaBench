
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_log_error (char*,char const*,char const*) ;
 scalar_t__ pg_strcasecmp (char const*,char*) ;
 scalar_t__ pg_strncasecmp (char const*,char*,size_t) ;
 size_t strlen (char const*) ;

bool
ParseVariableBool(const char *value, const char *name, bool *result)
{
 size_t len;
 bool valid = 1;


 if (value == ((void*)0))
  value = "";

 len = strlen(value);

 if (len > 0 && pg_strncasecmp(value, "true", len) == 0)
  *result = 1;
 else if (len > 0 && pg_strncasecmp(value, "false", len) == 0)
  *result = 0;
 else if (len > 0 && pg_strncasecmp(value, "yes", len) == 0)
  *result = 1;
 else if (len > 0 && pg_strncasecmp(value, "no", len) == 0)
  *result = 0;

 else if (pg_strncasecmp(value, "on", (len > 2 ? len : 2)) == 0)
  *result = 1;
 else if (pg_strncasecmp(value, "off", (len > 2 ? len : 2)) == 0)
  *result = 0;
 else if (pg_strcasecmp(value, "1") == 0)
  *result = 1;
 else if (pg_strcasecmp(value, "0") == 0)
  *result = 0;
 else
 {

  if (name)
   pg_log_error("unrecognized value \"%s\" for \"%s\": Boolean expected",
       value, name);
  valid = 0;
 }
 return valid;
}
