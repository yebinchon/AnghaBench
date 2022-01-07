
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fcgi_request ;


 int FCGI_STDOUT ;
 size_t INT_MAX ;
 scalar_t__ SG (int ) ;
 int fcgi_write (int *,int ,char const*,int) ;
 int php_handle_aborted_connection () ;
 int server_context ;

__attribute__((used)) static size_t sapi_fcgi_ub_write(const char *str, size_t str_length)
{
 const char *ptr = str;
 size_t remaining = str_length;
 fcgi_request *request = (fcgi_request*) SG(server_context);

 while (remaining > 0) {
  int to_write = remaining > INT_MAX ? INT_MAX : (int)remaining;
  int ret = fcgi_write(request, FCGI_STDOUT, ptr, to_write);

  if (ret <= 0) {
   php_handle_aborted_connection();
   return str_length - remaining;
  }
  ptr += ret;
  remaining -= ret;
 }

 return str_length;
}
