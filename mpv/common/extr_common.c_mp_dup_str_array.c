
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MP_TARRAY_APPEND (void*,char**,int,int *) ;
 int * talloc_strdup (void*,char*) ;

char **mp_dup_str_array(void *tctx, char **s)
{
    char **r = ((void*)0);
    int num_r = 0;
    for (int n = 0; s && s[n]; n++)
        MP_TARRAY_APPEND(tctx, r, num_r, talloc_strdup(tctx, s[n]));
    if (r)
        MP_TARRAY_APPEND(tctx, r, num_r, ((void*)0));
    return r;
}
