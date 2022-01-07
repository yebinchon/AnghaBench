
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cgi_getenv_win32 (char*,size_t) ;
 char* getenv (char*) ;

__attribute__((used)) static char *sapi_cgi_getenv(char *name, size_t name_len)
{

 return getenv(name);



}
