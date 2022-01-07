
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 scalar_t__ malloc (size_t) ;
 int putenv (char*) ;
 int setenv (char*,char*,int) ;
 size_t slprintf (char*,size_t,char*,char*,...) ;
 size_t strlen (char*) ;
 int unsetenv (char*) ;

__attribute__((used)) static char *_sapi_cgi_putenv(char *name, size_t name_len, char *value)
{

 size_t len;
 char *buf;
 len = name_len + (value ? strlen(value) : 0) + sizeof("=") + 2;
 buf = (char *) malloc(len);
 if (buf == ((void*)0)) {
  return getenv(name);
 }


 if (value) {
  len = slprintf(buf, len - 1, "%s=%s", name, value);
  putenv(buf);
 }


 if (!value) {
  len = slprintf(buf, len - 1, "%s=", name);
  putenv(buf);
 }

 return getenv(name);
}
