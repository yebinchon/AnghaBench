
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;
typedef int int64_t ;



__attribute__((used)) static int64_t timespec_to_us64(struct timespec *ts)
{
 return ts->tv_sec * 1000 * 1000 + ts->tv_nsec / 1000;
}
