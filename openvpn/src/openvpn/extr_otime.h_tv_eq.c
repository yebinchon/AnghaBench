
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;



__attribute__((used)) static inline bool
tv_eq(const struct timeval *t1, const struct timeval *t2)
{
    return t1->tv_sec == t2->tv_sec && t1->tv_usec == t2->tv_usec;
}
