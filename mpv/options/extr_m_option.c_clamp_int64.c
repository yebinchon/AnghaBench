
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m_option_t ;
typedef long long int64_t ;


 int clamp_longlong (int const*,long long*) ;

__attribute__((used)) static int clamp_int64(const m_option_t *opt, void *val)
{
    long long tmp = *(int64_t *)val;
    int r = clamp_longlong(opt, &tmp);
    *(int64_t *)val = tmp;
    return r;
}
