
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;



__attribute__((used)) static inline int php_tvtoto(struct timeval *timeouttv)
{
 if (timeouttv) {
  return (timeouttv->tv_sec * 1000) + (timeouttv->tv_usec / 1000);
 }
 return -1;
}
