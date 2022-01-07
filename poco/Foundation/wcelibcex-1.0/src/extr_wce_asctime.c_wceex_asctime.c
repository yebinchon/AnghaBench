
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;


 int __wce_asc_result ;
 char* wceex_asctime_r (struct tm const*,int ) ;

char * wceex_asctime(const struct tm *tmbuff)
{
    return wceex_asctime_r(tmbuff, __wce_asc_result);
}
