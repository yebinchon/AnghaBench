
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_INIT_ENGINE_ALL_BUILTIN ;
 int OPENSSL_init_crypto (int ,int *) ;

void ENGINE_load_builtin_engines(void)
{
    OPENSSL_init_crypto(OPENSSL_INIT_ENGINE_ALL_BUILTIN, ((void*)0));
}
