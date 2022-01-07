
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int pg_log_error (char*,char const*) ;
 scalar_t__ pwfilename ;
 scalar_t__ pwprompt ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void
check_need_password(const char *authmethodlocal, const char *authmethodhost)
{
 if ((strcmp(authmethodlocal, "md5") == 0 ||
   strcmp(authmethodlocal, "password") == 0 ||
   strcmp(authmethodlocal, "scram-sha-256") == 0) &&
  (strcmp(authmethodhost, "md5") == 0 ||
   strcmp(authmethodhost, "password") == 0 ||
   strcmp(authmethodhost, "scram-sha-256") == 0) &&
  !(pwprompt || pwfilename))
 {
  pg_log_error("must specify a password for the superuser to enable %s authentication",
      (strcmp(authmethodlocal, "md5") == 0 ||
       strcmp(authmethodlocal, "password") == 0 ||
       strcmp(authmethodlocal, "scram-sha-256") == 0)
      ? authmethodlocal
      : authmethodhost);
  exit(1);
 }
}
