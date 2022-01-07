
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENGINE_load_builtin_engines () ;
 int OPENSSL_INIT_ENGINE_AFALG ;
 int OPENSSL_init_crypto (int ,int *) ;

int global_init(void)
{
    ENGINE_load_builtin_engines();

    OPENSSL_init_crypto(OPENSSL_INIT_ENGINE_AFALG, ((void*)0));

    return 1;
}
