
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m_option_t ;


 char** VAL (void const*) ;
 char* talloc_strdup (int *,char*) ;
 char* talloc_strdup_append_buffer (char*,char*) ;

__attribute__((used)) static char *print_str_list(const m_option_t *opt, const void *src)
{
    char **lst = ((void*)0);
    char *ret = ((void*)0);

    if (!(src && VAL(src)))
        return talloc_strdup(((void*)0), "");
    lst = VAL(src);

    for (int i = 0; lst[i]; i++) {
        if (ret)
            ret = talloc_strdup_append_buffer(ret, ",");
        ret = talloc_strdup_append_buffer(ret, lst[i]);
    }
    return ret;
}
