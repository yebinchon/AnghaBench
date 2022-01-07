
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 char* wceex_asctime (int ) ;
 int wceex_localtime (int const*) ;

char * wceex_ctime(const time_t *timer)
{
   return wceex_asctime(wceex_localtime(timer));
}
