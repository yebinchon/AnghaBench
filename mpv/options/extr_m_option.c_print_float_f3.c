
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m_option_t ;


 double VAL (void const*) ;
 char* print_double_f3 (int const*,double*) ;

__attribute__((used)) static char *print_float_f3(const m_option_t *opt, const void *val)
{
    double tmp = VAL(val);
    return print_double_f3(opt, &tmp);
}
