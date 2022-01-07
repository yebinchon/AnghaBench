
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __int64 ;


 scalar_t__ LLONG_MAX ;
 int usleep_impl (scalar_t__) ;

void msec_sleep(double msec) {
    const double usec = msec * 1000.0;
    usleep_impl(usec > (double)LLONG_MAX ? LLONG_MAX : (__int64)usec);
}
