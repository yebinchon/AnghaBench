
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fcgi_request ;


 scalar_t__ SG (int ) ;
 char* cgi_getenv_win32 (char*,size_t) ;
 char* fcgi_getenv (int *,char*,int) ;
 char* getenv (char*) ;
 int server_context ;
 char* strdup (char*) ;

__attribute__((used)) static char *sapi_fcgi_getenv(char *name, size_t name_len)
{




 fcgi_request *request = (fcgi_request*) SG(server_context);
 char *ret = fcgi_getenv(request, name, (int)name_len);


 if (ret) return ret;


 return getenv(name);
}
