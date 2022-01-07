
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i; } ;
typedef int OPENSSL_CTX ;
typedef TYPE_1__ FOO ;


 scalar_t__ TEST_int_eq (int ,int) ;
 scalar_t__ TEST_ptr (TYPE_1__*) ;
 int foo_method ;
 TYPE_1__* openssl_ctx_get_data (int *,int ,int *) ;

__attribute__((used)) static int test_context(OPENSSL_CTX *ctx)
{
    FOO *data = ((void*)0);

    return TEST_ptr(data = openssl_ctx_get_data(ctx, 0, &foo_method))

        && TEST_int_eq(data->i, 42);
}
