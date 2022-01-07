
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 int mp_add_timeout (int ,double) ;
 int mp_time_us () ;
 struct timespec mp_time_us_to_timespec (int ) ;

struct timespec mp_rel_time_to_timespec(double timeout_sec)
{
    return mp_time_us_to_timespec(mp_add_timeout(mp_time_us(), timeout_sec));
}
