
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_log_error (char*,char const*,char const*,char const*) ;

void
PsqlVarEnumError(const char *name, const char *value, const char *suggestions)
{
 pg_log_error("unrecognized value \"%s\" for \"%s\"\n"
     "Available values are: %s.",
     value, name, suggestions);
}
