
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m_option_t ;


 int clamp_double (int const*,void*) ;

__attribute__((used)) static void multiply_double(const m_option_t *opt, void *val, double f)
{
    *(double *)val *= f;
    clamp_double(opt, val);
}
