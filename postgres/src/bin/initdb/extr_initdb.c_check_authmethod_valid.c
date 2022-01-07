
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int pg_log_error (char*,char const*,char const*) ;
 int strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char const* const) ;
 scalar_t__ strncmp (char const*,char const* const,char const*) ;

__attribute__((used)) static void
check_authmethod_valid(const char *authmethod, const char *const *valid_methods, const char *conntype)
{
 const char *const *p;

 for (p = valid_methods; *p; p++)
 {
  if (strcmp(authmethod, *p) == 0)
   return;

  if (strchr(authmethod, ' '))
   if (strncmp(authmethod, *p, (authmethod - strchr(authmethod, ' '))) == 0)
    return;
 }

 pg_log_error("invalid authentication method \"%s\" for \"%s\" connections",
     authmethod, conntype);
 exit(1);
}
