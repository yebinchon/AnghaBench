
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strnlen (char const*,size_t) ;
 int ta_dbg_mark_as_string (char*) ;
 size_t ta_get_size (char*) ;
 char* ta_realloc_size (int *,char*,size_t) ;

__attribute__((used)) static bool strndup_append_at(char **str, size_t at, const char *append,
                              size_t append_len)
{
    assert(ta_get_size(*str) >= at);

    if (!*str && !append)
        return 1;

    size_t real_len = append ? strnlen(append, append_len) : 0;
    if (append_len > real_len)
        append_len = real_len;

    if (ta_get_size(*str) < at + append_len + 1) {
        char *t = ta_realloc_size(((void*)0), *str, at + append_len + 1);
        if (!t)
            return 0;
        *str = t;
    }

    if (append_len)
        memcpy(*str + at, append, append_len);

    (*str)[at + append_len] = '\0';

    ta_dbg_mark_as_string(*str);

    return 1;
}
