
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;



__attribute__((used)) static inline void
tv_add(struct timeval *dest, const struct timeval *src)
{
    dest->tv_sec += src->tv_sec;
    dest->tv_usec += src->tv_usec;
    dest->tv_sec += (dest->tv_usec >> 20);
    dest->tv_usec &= 0x000FFFFF;
    if (dest->tv_usec >= 1000000)
    {
        dest->tv_usec -= 1000000;
        dest->tv_sec += 1;
    }
}
