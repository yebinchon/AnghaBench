
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 long long ts_to_nsec (struct timespec) ;

long long diff_timespec(struct timespec start, struct timespec end)
{
 long long start_ns, end_ns;

 start_ns = ts_to_nsec(start);
 end_ns = ts_to_nsec(end);
 return end_ns - start_ns;
}
