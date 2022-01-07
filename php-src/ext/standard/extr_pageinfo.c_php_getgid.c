
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_long ;


 int BG (int ) ;
 int page_gid ;
 int php_statpage () ;

zend_long php_getgid(void)
{
 php_statpage();
 return (BG(page_gid));
}
