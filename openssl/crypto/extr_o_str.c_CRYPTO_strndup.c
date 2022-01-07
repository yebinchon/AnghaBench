
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* CRYPTO_malloc (size_t,char const*,int) ;
 size_t OPENSSL_strnlen (char const*,size_t) ;
 int memcpy (char*,char const*,size_t) ;

char *CRYPTO_strndup(const char *str, size_t s, const char* file, int line)
{
    size_t maxlen;
    char *ret;

    if (str == ((void*)0))
        return ((void*)0);

    maxlen = OPENSSL_strnlen(str, s);

    ret = CRYPTO_malloc(maxlen + 1, file, line);
    if (ret) {
        memcpy(ret, str, maxlen);
        ret[maxlen] = '\0';
    }
    return ret;
}
