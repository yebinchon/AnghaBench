
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 struct tm* gmtime (int *) ;
 int gmtime_r (int *,struct tm*) ;

void
ngx_libc_gmtime(time_t s, struct tm *tm)
{




    struct tm *t;

    t = gmtime(&s);
    *tm = *t;


}
