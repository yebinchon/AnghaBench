
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m_option_t ;


 char* talloc_asprintf (int *,char*,unsigned int) ;

__attribute__((used)) static char *print_fourcc(const m_option_t *opt, const void *val)
{
    unsigned int fourcc = *(unsigned int *)val;
    return talloc_asprintf(((void*)0), "%08x", fourcc);
}
