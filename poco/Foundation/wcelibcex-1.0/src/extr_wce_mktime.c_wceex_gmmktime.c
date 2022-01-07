
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 int __wceex_mktime_internal (struct tm*,int ) ;

time_t wceex_gmmktime(struct tm *tmbuff)
{
    return __wceex_mktime_internal(tmbuff, 0);
}
