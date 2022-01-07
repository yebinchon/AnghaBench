
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fcgi_terminate () ;

void fpm_php_soft_quit()
{
 fcgi_terminate();
}
