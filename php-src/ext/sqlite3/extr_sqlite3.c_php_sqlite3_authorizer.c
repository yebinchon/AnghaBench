
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SQLITE_DENY ;
 int SQLITE_OK ;
 int memcmp (char const*,char*,int) ;
 int php_check_open_basedir (char const*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static int php_sqlite3_authorizer(void *autharg, int access_type, const char *arg3, const char *arg4, const char *arg5, const char *arg6)
{
 switch (access_type) {
  case 128:
  {
   if (memcmp(arg3, ":memory:", sizeof(":memory:")) && *arg3) {
    if (strncmp(arg3, "file:", 5) == 0) {

     if (!arg3[5]) {
      return SQLITE_DENY;
     }
     if (php_check_open_basedir(arg3 + 5)) {
      return SQLITE_DENY;
     }
    }
    if (php_check_open_basedir(arg3)) {
     return SQLITE_DENY;
    }
   }
   return SQLITE_OK;
  }

  default:

   return SQLITE_OK;
 }
}
