
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fcgi_request ;


 char* FCGI_GETENV (int *,char*) ;
 scalar_t__ SG (int ) ;
 int server_context ;

__attribute__((used)) static char *sapi_fcgi_read_cookies(void)
{
 fcgi_request *request = (fcgi_request*) SG(server_context);

 return FCGI_GETENV(request, "HTTP_COOKIE");
}
