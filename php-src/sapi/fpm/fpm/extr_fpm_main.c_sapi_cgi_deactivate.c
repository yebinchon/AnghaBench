
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fcgi_request ;


 scalar_t__ SG (int ) ;
 int SUCCESS ;
 int fcgi_finish_request (int *,int ) ;
 int parent ;
 int php_handle_aborted_connection () ;
 int sapi_started ;
 int server_context ;

__attribute__((used)) static int sapi_cgi_deactivate(void)
{




 if (SG(sapi_started)) {
  if (!parent && !fcgi_finish_request((fcgi_request*)SG(server_context), 0)) {
   php_handle_aborted_connection();
  }
 }
 return SUCCESS;
}
