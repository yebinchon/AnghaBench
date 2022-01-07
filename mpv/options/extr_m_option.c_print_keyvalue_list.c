
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m_option_t ;


 char** VAL (void const*) ;
 char* talloc_asprintf_append (char*,char*,char*,char*) ;
 char* talloc_strdup (int *,char*) ;
 char* talloc_strdup_append (char*,char*) ;

__attribute__((used)) static char *print_keyvalue_list(const m_option_t *opt, const void *src)
{
    char **lst = VAL(src);
    char *ret = talloc_strdup(((void*)0), "");
    for (int n = 0; lst && lst[n] && lst[n + 1]; n += 2) {
        if (ret[0])
            ret = talloc_strdup_append(ret, ",");
        ret = talloc_asprintf_append(ret, "%s=%s", lst[n], lst[n + 1]);
    }
    return ret;
}
