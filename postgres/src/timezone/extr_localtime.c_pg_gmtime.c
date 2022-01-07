
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int dummy; } ;
typedef int pg_time_t ;


 struct pg_tm* gmtsub (int const*,int ,int *) ;
 int tm ;

struct pg_tm *
pg_gmtime(const pg_time_t *timep)
{
 return gmtsub(timep, 0, &tm);
}
