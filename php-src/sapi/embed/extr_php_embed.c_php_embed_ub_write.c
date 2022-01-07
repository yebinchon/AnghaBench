
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t php_embed_single_write (char const*,size_t) ;
 int php_handle_aborted_connection () ;

__attribute__((used)) static size_t php_embed_ub_write(const char *str, size_t str_length)
{
 const char *ptr = str;
 size_t remaining = str_length;
 size_t ret;

 while (remaining > 0) {
  ret = php_embed_single_write(ptr, remaining);
  if (!ret) {
   php_handle_aborted_connection();
  }
  ptr += ret;
  remaining -= ret;
 }

 return str_length;
}
