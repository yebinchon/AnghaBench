
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 scalar_t__ EPOCH_DIFFERENCE ;
 long long TICKS_PER_SECOND ;

__attribute__((used)) static time_t
convert_windows_time(long long int filetime)
{
    unsigned long long seconds = filetime / TICKS_PER_SECOND;
    seconds -= EPOCH_DIFFERENCE;
    return (time_t)seconds;
}
