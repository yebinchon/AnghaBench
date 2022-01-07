
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fcgi_request ;


 int fcgi_flush (int *,int ) ;
 int parent ;
 int php_handle_aborted_connection () ;

__attribute__((used)) static void sapi_fcgi_flush(void *server_context)
{
 fcgi_request *request = (fcgi_request*) server_context;

 if (
  !parent &&
  request && !fcgi_flush(request, 0)) {

  php_handle_aborted_connection();
 }
}
