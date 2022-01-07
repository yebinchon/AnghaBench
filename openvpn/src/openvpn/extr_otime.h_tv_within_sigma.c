
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;


 int TV_WITHIN_SIGMA_MAX_SEC ;
 int tv_subtract (struct timeval const*,struct timeval const*,int ) ;

__attribute__((used)) static inline bool
tv_within_sigma(const struct timeval *t1, const struct timeval *t2, unsigned int sigma)
{
    const int delta = tv_subtract(t1, t2, TV_WITHIN_SIGMA_MAX_SEC);
    return -(int)sigma <= delta && delta <= (int)sigma;
}
