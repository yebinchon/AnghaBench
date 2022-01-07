
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_ull ;
typedef int timelib_sll ;



__attribute__((used)) static timelib_sll do_time(timelib_ull hour, timelib_ull minute, timelib_ull second)
{
 timelib_sll res = 0;

 res += hour * 3600;
 res += minute * 60;
 res += second;
 return res;
}
