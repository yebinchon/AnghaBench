
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zic_t ;


 scalar_t__ max_time ;
 scalar_t__ min_time ;
 int time_overflow () ;

__attribute__((used)) static zic_t
tadd(zic_t t1, zic_t t2)
{
 if (t1 < 0)
 {
  if (t2 < min_time - t1)
  {
   if (t1 != min_time)
    time_overflow();
   return min_time;
  }
 }
 else
 {
  if (max_time - t1 < t2)
  {
   if (t1 != max_time)
    time_overflow();
   return max_time;
  }
 }
 return t1 + t2;
}
