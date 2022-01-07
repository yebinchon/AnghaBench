
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;


 int gettimeofday (struct timeval*,void*) ;

__attribute__((used)) static inline int
openvpn_gettimeofday(struct timeval *tv, void *tz)
{
    return gettimeofday(tv, tz);
}
