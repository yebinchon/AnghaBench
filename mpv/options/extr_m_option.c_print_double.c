
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ m_option_t ;


 int M_OPT_DEFAULT_NAN ;
 double VAL (void const*) ;
 scalar_t__ isnan (double) ;
 char* talloc_asprintf (int *,char*,double) ;
 char* talloc_strdup (int *,char*) ;

__attribute__((used)) static char *print_double(const m_option_t *opt, const void *val)
{
    double f = VAL(val);
    if (isnan(f) && (opt->flags & M_OPT_DEFAULT_NAN))
        return talloc_strdup(((void*)0), "default");
    return talloc_asprintf(((void*)0), "%f", f);
}
