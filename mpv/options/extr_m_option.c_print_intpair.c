
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m_option_t ;


 char* talloc_asprintf (int *,char*,int const) ;
 char* talloc_asprintf_append (char*,char*,int const) ;

__attribute__((used)) static char *print_intpair(const m_option_t *opt, const void *val)
{
    const int *p = val;
    char *res = talloc_asprintf(((void*)0), "%d", p[0]);
    if (p[1] != -1)
        res = talloc_asprintf_append(res, "-%d", p[1]);
    return res;
}
