
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_INIT_NO_LOAD_CONFIG ;
 int OPENSSL_init_crypto (int ,int *) ;

int global_init(void)
{




    return OPENSSL_init_crypto(OPENSSL_INIT_NO_LOAD_CONFIG, ((void*)0));
}
