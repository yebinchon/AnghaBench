
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m_option_t ;


 char* find_next_flag (int const*,int*) ;
 char* talloc_asprintf_append_buffer (char*,char*,char*,char const*) ;
 char* talloc_strdup (int *,char*) ;

__attribute__((used)) static char *print_flags(const m_option_t *opt, const void *val)
{
    int value = *(int *)val;
    char *res = talloc_strdup(((void*)0), "");
    while (1) {
        const char *flag = find_next_flag(opt, &value);
        if (!flag)
            break;

        res = talloc_asprintf_append_buffer(res, "%s%s", res[0] ? "+" : "", flag);
    }
    return res;
}
