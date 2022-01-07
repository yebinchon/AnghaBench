
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int username ;
typedef scalar_t__ uid_t ;
struct passwd {char* pw_name; } ;
typedef int pwdbuf ;
typedef scalar_t__ PQExpBuffer ;
typedef int DWORD ;


 int BUFSIZ ;
 int GetLastError () ;
 scalar_t__ GetUserName (char*,int*) ;
 scalar_t__ geteuid () ;
 int libpq_gettext (char*) ;
 int pglock_thread () ;
 int pgunlock_thread () ;
 int pqGetpwuid (scalar_t__,struct passwd*,char*,int,struct passwd**) ;
 int printfPQExpBuffer (scalar_t__,int ,...) ;
 char* strdup (char const*) ;
 int strerror_r (int,char*,int) ;

char *
pg_fe_getauthname(PQExpBuffer errorMessage)
{
 char *result = ((void*)0);
 const char *name = ((void*)0);






 uid_t user_id = geteuid();
 char pwdbuf[BUFSIZ];
 struct passwd pwdstr;
 struct passwd *pw = ((void*)0);
 int pwerr;
 pglock_thread();
 pwerr = pqGetpwuid(user_id, &pwdstr, pwdbuf, sizeof(pwdbuf), &pw);
 if (pw != ((void*)0))
  name = pw->pw_name;
 else if (errorMessage)
 {
  if (pwerr != 0)
   printfPQExpBuffer(errorMessage,
         libpq_gettext("could not look up local user ID %d: %s\n"),
         (int) user_id,
         strerror_r(pwerr, pwdbuf, sizeof(pwdbuf)));
  else
   printfPQExpBuffer(errorMessage,
         libpq_gettext("local user with ID %d does not exist\n"),
         (int) user_id);
 }


 if (name)
 {
  result = strdup(name);
  if (result == ((void*)0) && errorMessage)
   printfPQExpBuffer(errorMessage,
         libpq_gettext("out of memory\n"));
 }

 pgunlock_thread();

 return result;
}
