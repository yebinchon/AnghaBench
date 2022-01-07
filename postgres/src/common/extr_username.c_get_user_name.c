
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int username ;
typedef scalar_t__ uid_t ;
struct passwd {char const* pw_name; } ;
typedef int DWORD ;


 int GetLastError () ;
 int GetUserName (char*,int*) ;
 int _ (char*) ;
 scalar_t__ errno ;
 scalar_t__ geteuid () ;
 struct passwd* getpwuid (scalar_t__) ;
 char* psprintf (int ,long,...) ;
 int strerror (scalar_t__) ;

const char *
get_user_name(char **errstr)
{

 struct passwd *pw;
 uid_t user_id = geteuid();

 *errstr = ((void*)0);

 errno = 0;
 pw = getpwuid(user_id);
 if (!pw)
 {
  *errstr = psprintf(_("could not look up effective user ID %ld: %s"),
         (long) user_id,
         errno ? strerror(errno) : _("user does not exist"));
  return ((void*)0);
 }

 return pw->pw_name;
}
