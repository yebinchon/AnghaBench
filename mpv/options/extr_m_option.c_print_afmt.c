
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m_option_t ;


 char* af_fmt_to_str (int) ;
 char* talloc_strdup (int *,char*) ;

__attribute__((used)) static char *print_afmt(const m_option_t *opt, const void *val)
{
    int fmt = *(int *)val;
    return talloc_strdup(((void*)0), fmt ? af_fmt_to_str(fmt) : "no");
}
