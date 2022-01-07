
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m_option_t ;


 scalar_t__ HAS_NOPTS (int const*) ;
 double MP_NOPTS_VALUE ;
 char* talloc_asprintf (int *,char*,double) ;
 char* talloc_strdup (int *,char*) ;

__attribute__((used)) static char *print_time(const m_option_t *opt, const void *val)
{
    double pts = *(double *)val;
    if (pts == MP_NOPTS_VALUE && HAS_NOPTS(opt))
        return talloc_strdup(((void*)0), "no");
    return talloc_asprintf(((void*)0), "%f", pts);
}
