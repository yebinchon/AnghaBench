
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;



__attribute__((used)) static inline void
tv_clear(struct timeval *tv)
{
    tv->tv_sec = 0;
    tv->tv_usec = 0;
}
