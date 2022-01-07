
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fcgi_request ;


 scalar_t__ CGIG (int ) ;
 int FCGI_STDERR ;
 scalar_t__ SG (int ) ;
 int fcgi_logging ;
 scalar_t__ fcgi_write (int *,int ,char*,size_t) ;
 int php_handle_aborted_connection () ;
 int server_context ;

void sapi_cgi_log_fastcgi(int level, char *message, size_t len)
{

 fcgi_request *request = (fcgi_request*) SG(server_context);







 if (CGIG(fcgi_logging) && request && message && len > 0
   && fcgi_write(request, FCGI_STDERR, message, len) < 0) {
  php_handle_aborted_connection();
 }
}
