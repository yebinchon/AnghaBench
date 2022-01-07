
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Timestamp ;


 int USECS_PER_SEC ;

__attribute__((used)) static Timestamp
dt2local(Timestamp dt, int tz)
{
 dt -= (tz * USECS_PER_SEC);
 return dt;
}
