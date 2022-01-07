
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 struct tm* __wceex_offtime (int const*,long) ;

struct tm * wceex_gmtime(const time_t *timer)
{
    register struct tm *tmp;

    tmp = __wceex_offtime(timer, 0L);

    return tmp;
}
