
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m_option_t ;


 scalar_t__ HAS_NOPTS (int const*) ;
 double MP_NOPTS_VALUE ;
 char* mp_format_time (double,int) ;
 char* talloc_strdup (int *,char*) ;

__attribute__((used)) static char *pretty_print_time(const m_option_t *opt, const void *val)
{
    double pts = *(double *)val;
    if (pts == MP_NOPTS_VALUE && HAS_NOPTS(opt))
        return talloc_strdup(((void*)0), "no");
    return mp_format_time(pts, 0);
}
