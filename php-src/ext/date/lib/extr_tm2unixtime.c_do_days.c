
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_ull ;
typedef int timelib_sll ;


 int SECS_PER_DAY ;

__attribute__((used)) static timelib_sll do_days(timelib_ull day)
{
 return ((day - 1) * SECS_PER_DAY);
}
