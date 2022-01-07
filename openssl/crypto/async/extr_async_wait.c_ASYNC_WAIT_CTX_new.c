
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASYNC_WAIT_CTX ;


 int * OPENSSL_zalloc (int) ;

ASYNC_WAIT_CTX *ASYNC_WAIT_CTX_new(void)
{
    return OPENSSL_zalloc(sizeof(ASYNC_WAIT_CTX));
}
