
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;



__attribute__((used)) static int php_openssl_compare_timeval( struct timeval a, struct timeval b )
{
 if (a.tv_sec > b.tv_sec || (a.tv_sec == b.tv_sec && a.tv_usec > b.tv_usec) ) {
  return 1;
 } else if( a.tv_sec == b.tv_sec && a.tv_usec == b.tv_usec ) {
  return 0;
 } else {
  return -1;
 }
}
