
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;



__attribute__((used)) static inline bool
tv_defined(const struct timeval *tv)
{
    return tv->tv_sec > 0 && tv->tv_usec > 0;
}
