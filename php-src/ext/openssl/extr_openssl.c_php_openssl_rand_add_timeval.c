
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tv ;
struct timeval {int dummy; } ;


 int RAND_add (struct timeval*,int,double) ;
 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static inline void php_openssl_rand_add_timeval()
{
 struct timeval tv;

 gettimeofday(&tv, ((void*)0));
 RAND_add(&tv, sizeof(tv), 0.0);
}
