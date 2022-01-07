
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_FATAL ;
 int msg (int ,char*) ;
 scalar_t__ unlikely (int) ;

size_t
array_mult_safe(const size_t m1, const size_t m2, const size_t extra)
{
    const size_t limit = 0xFFFFFFFF;
    unsigned long long res = (unsigned long long)m1 * (unsigned long long)m2 + (unsigned long long)extra;
    if (unlikely(m1 > limit) || unlikely(m2 > limit) || unlikely(extra > limit) || unlikely(res > (unsigned long long)limit))
    {
        msg(M_FATAL, "attempted allocation of excessively large array");
    }
    return (size_t) res;
}
