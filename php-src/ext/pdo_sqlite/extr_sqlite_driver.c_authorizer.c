
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SQLITE_DENY ;
 int SQLITE_OK ;
 int efree (char*) ;
 char* make_filename_safe (char const*) ;

__attribute__((used)) static int authorizer(void *autharg, int access_type, const char *arg3, const char *arg4,
  const char *arg5, const char *arg6)
{
 char *filename;
 switch (access_type) {
  case 128: {
     filename = make_filename_safe(arg4);
   if (!filename) {
    return SQLITE_DENY;
   }
   efree(filename);
   return SQLITE_OK;
  }

  case 129: {
     filename = make_filename_safe(arg3);
   if (!filename) {
    return SQLITE_DENY;
   }
   efree(filename);
   return SQLITE_OK;
  }

  default:

   return SQLITE_OK;
 }
}
