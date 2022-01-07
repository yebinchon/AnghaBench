
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
typedef int errno_t ;


 struct tm* gmtime (int const*) ;
 int memcpy (struct tm*,struct tm*,int) ;
 int memset (struct tm*,int ,int) ;

errno_t gmtime_s(struct tm* _tm, const time_t *time)
{
    struct tm *x;

    x = gmtime(time);
    if (x == ((void*)0)) {
        memset(_tm, 0, sizeof(*_tm));
        return -1;
    }
    memcpy(_tm, x, sizeof(*_tm));

    return 0;
}
