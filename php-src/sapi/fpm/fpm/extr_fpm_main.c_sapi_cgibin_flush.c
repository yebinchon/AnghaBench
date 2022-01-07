
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fcgi_request ;


 scalar_t__ EOF ;
 int fcgi_flush (int *,int ) ;
 scalar_t__ fflush (int ) ;
 scalar_t__ fpm_is_running ;
 int parent ;
 int php_handle_aborted_connection () ;
 int stdout ;

__attribute__((used)) static void sapi_cgibin_flush(void *server_context)
{

 if (fpm_is_running) {
  fcgi_request *request = (fcgi_request*) server_context;
  if (!parent && request && !fcgi_flush(request, 0)) {
   php_handle_aborted_connection();
  }
  return;
 }


 if (fflush(stdout) == EOF) {
  php_handle_aborted_connection();
 }
}
