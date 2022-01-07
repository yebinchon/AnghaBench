
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m_option_t ;
typedef double int64_t ;


 double INT64_MAX ;
 double INT64_MIN ;
 int clamp_int64 (int const*,void*) ;

__attribute__((used)) static void multiply_int64(const m_option_t *opt, void *val, double f)
{
    double v = *(int64_t *)val * f;
    int64_t iv = v;
    if (v < INT64_MIN)
        iv = INT64_MIN;
    if (v > INT64_MAX)
        iv = INT64_MAX;
    *(int64_t *)val = iv;
    clamp_int64(opt, val);
}
