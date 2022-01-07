
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;


 int OSSL_PARAM_UTF8_STRING ;
 int ossl_param_construct (char const*,int ,char*,size_t) ;
 int strlen (char*) ;

OSSL_PARAM OSSL_PARAM_construct_utf8_string(const char *key, char *buf,
                                            size_t bsize)
{
    if (buf != ((void*)0) && bsize == 0)
        bsize = strlen(buf) + 1;
    return ossl_param_construct(key, OSSL_PARAM_UTF8_STRING, buf, bsize);
}
