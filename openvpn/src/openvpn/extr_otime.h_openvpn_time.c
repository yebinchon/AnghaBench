
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int now ;
 int update_time () ;

__attribute__((used)) static inline time_t
openvpn_time(time_t *t)
{
    update_time();
    if (t)
    {
        *t = now;
    }
    return now;
}
