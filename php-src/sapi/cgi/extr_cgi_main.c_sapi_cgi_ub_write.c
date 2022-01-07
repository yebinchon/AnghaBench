
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int php_handle_aborted_connection () ;
 size_t sapi_cgi_single_write (char const*,size_t) ;

__attribute__((used)) static size_t sapi_cgi_ub_write(const char *str, size_t str_length)
{
 const char *ptr = str;
 size_t remaining = str_length;
 size_t ret;

 while (remaining > 0) {
  ret = sapi_cgi_single_write(ptr, remaining);
  if (!ret) {
   php_handle_aborted_connection();
   return str_length - remaining;
  }
  ptr += ret;
  remaining -= ret;
 }

 return str_length;
}
