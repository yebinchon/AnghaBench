
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp ;


 int USECS_PER_SEC ;

__attribute__((used)) static timestamp
dt2local(timestamp dt, int tz)
{
 dt -= (tz * USECS_PER_SEC);
 return dt;
}
