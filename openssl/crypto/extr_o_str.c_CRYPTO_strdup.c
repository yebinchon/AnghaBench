
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* CRYPTO_malloc (scalar_t__,char const*,int) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

char *CRYPTO_strdup(const char *str, const char* file, int line)
{
    char *ret;

    if (str == ((void*)0))
        return ((void*)0);
    ret = CRYPTO_malloc(strlen(str) + 1, file, line);
    if (ret != ((void*)0))
        strcpy(ret, str);
    return ret;
}
