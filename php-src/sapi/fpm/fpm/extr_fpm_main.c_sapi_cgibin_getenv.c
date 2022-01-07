
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fcgi_request ;


 scalar_t__ SG (int ) ;
 char* fcgi_getenv (int *,char*,size_t) ;
 scalar_t__ fpm_is_running ;
 char* getenv (char*) ;
 int server_context ;

__attribute__((used)) static char *sapi_cgibin_getenv(char *name, size_t name_len)
{

 if (fpm_is_running) {
  fcgi_request *request = (fcgi_request*) SG(server_context);
  return fcgi_getenv(request, name, name_len);
 }


 return getenv(name);
}
