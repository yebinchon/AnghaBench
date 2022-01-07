
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m_option_t ;


 double VAL (void const*) ;
 scalar_t__ isnan (double) ;
 char* print_double (int const*,void const*) ;
 char* talloc_asprintf (int *,char*,double) ;

__attribute__((used)) static char *print_double_f3(const m_option_t *opt, const void *val)
{
    double f = VAL(val);
    if (isnan(f))
        return print_double(opt, val);
    return talloc_asprintf(((void*)0), "%.3f", f);
}
