
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 struct tm* localtime (int *) ;

void
ngx_libc_localtime(time_t s, struct tm *tm)
{
    struct tm *t;

    t = localtime(&s);
    *tm = *t;
}
