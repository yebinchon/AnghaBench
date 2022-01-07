
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_CTX ;


 int OPENSSL_CTX_free (int *) ;
 int * OPENSSL_CTX_new () ;
 scalar_t__ TEST_ptr (int *) ;
 scalar_t__ test_context (int *) ;

__attribute__((used)) static int test_app_context(void)
{
    OPENSSL_CTX *ctx = ((void*)0);
    int result =
        TEST_ptr(ctx = OPENSSL_CTX_new())
        && test_context(ctx);

    OPENSSL_CTX_free(ctx);
    return result;
}
