
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ ssize_t ;
typedef int fcgi_request ;


 int FCGI_STDOUT ;
 int MIN (int ,int) ;
 scalar_t__ SG (int ) ;
 int STDOUT_FILENO ;
 scalar_t__ fcgi_write (int *,int ,char const*,int ) ;
 scalar_t__ fpm_is_running ;
 size_t fwrite (char const*,int,int ,int ) ;
 int server_context ;
 int stdout ;
 scalar_t__ write (int ,char const*,int ) ;

__attribute__((used)) static inline size_t sapi_cgibin_single_write(const char *str, uint32_t str_length)
{
 ssize_t ret;


 if (fpm_is_running) {
  fcgi_request *request = (fcgi_request*) SG(server_context);
  ret = fcgi_write(request, FCGI_STDOUT, str, str_length);
  if (ret <= 0) {
   return 0;
  }
  return (size_t)ret;
 }
 return fwrite(str, 1, MIN(str_length, 16384), stdout);

}
