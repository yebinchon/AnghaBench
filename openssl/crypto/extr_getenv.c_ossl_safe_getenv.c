
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ OPENSSL_issetugid () ;
 char* getenv (char const*) ;
 char* secure_getenv (char const*) ;

char *ossl_safe_getenv(const char *name)
{
    if (OPENSSL_issetugid())
        return ((void*)0);
    return getenv(name);

}
