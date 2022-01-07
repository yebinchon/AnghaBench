
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_INIT_ENGINE_ALL_BUILTIN ;
 int OPENSSL_INIT_LOAD_CONFIG ;
 int OPENSSL_init_ssl (int,int *) ;

int global_init(void)
{
    if (!OPENSSL_init_ssl(OPENSSL_INIT_ENGINE_ALL_BUILTIN
                          | OPENSSL_INIT_LOAD_CONFIG, ((void*)0)))
        return 0;
    return 1;
}
