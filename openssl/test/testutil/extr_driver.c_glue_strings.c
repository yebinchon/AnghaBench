
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* OPENSSL_malloc (size_t) ;
 int TEST_ptr (char*) ;
 char const* strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

char *glue_strings(const char *list[], size_t *out_len)
{
    size_t len = 0;
    char *p, *ret;
    int i;

    for (i = 0; list[i] != ((void*)0); i++)
        len += strlen(list[i]);

    if (out_len != ((void*)0))
        *out_len = len;

    if (!TEST_ptr(ret = p = OPENSSL_malloc(len + 1)))
        return ((void*)0);

    for (i = 0; list[i] != ((void*)0); i++)
        p += strlen(strcpy(p, list[i]));

    return ret;
}
