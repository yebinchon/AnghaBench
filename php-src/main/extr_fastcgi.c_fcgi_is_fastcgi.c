
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fcgi_init () ;
 int is_fastcgi ;
 int is_initialized ;

int fcgi_is_fastcgi(void)
{
 if (!is_initialized) {
  return fcgi_init();
 } else {
  return is_fastcgi;
 }
}
