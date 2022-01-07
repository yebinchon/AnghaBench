
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strndup_append_at (char**,int ,char const*,size_t) ;
 int ta_free (char*) ;
 int ta_set_parent (char*,void*) ;

char *ta_strndup(void *ta_parent, const char *str, size_t n)
{
    if (!str)
        return ((void*)0);
    char *new = ((void*)0);
    strndup_append_at(&new, 0, str, n);
    if (!ta_set_parent(new, ta_parent)) {
        ta_free(new);
        new = ((void*)0);
    }
    return new;
}
