
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expected_max; int expected_min; int max_ok; int max_version; int min_ok; int min_version; } ;
typedef TYPE_1__ version_test ;
typedef int SSL_CTX ;
typedef int SSL ;


 int SSL_CTX_free (int *) ;
 int SSL_CTX_get_max_proto_version (int *) ;
 int SSL_CTX_get_min_proto_version (int *) ;
 int * SSL_CTX_new (int ) ;
 int SSL_CTX_set_max_proto_version (int *,int ) ;
 int SSL_CTX_set_min_proto_version (int *,int ) ;
 int SSL_free (int *) ;
 int SSL_get_max_proto_version (int *) ;
 int SSL_get_min_proto_version (int *) ;
 int * SSL_new (int *) ;
 int SSL_set_max_proto_version (int *,int ) ;
 int SSL_set_min_proto_version (int *,int ) ;
 int TEST_int_eq (int ,int ) ;
 int TLS_server_method () ;
 TYPE_1__* version_testdata ;

__attribute__((used)) static int test_set_min_max_version(int idx_tst)
{
    SSL_CTX *ctx = ((void*)0);
    SSL *ssl = ((void*)0);
    int testresult = 0;
    version_test t = version_testdata[idx_tst];

    ctx = SSL_CTX_new(TLS_server_method());
    if (ctx == ((void*)0))
        goto end;

    ssl = SSL_new(ctx);
    if (ssl == ((void*)0))
        goto end;

    if (!TEST_int_eq(SSL_CTX_set_min_proto_version(ctx, t.min_version), t.min_ok))
        goto end;
    if (!TEST_int_eq(SSL_CTX_set_max_proto_version(ctx, t.max_version), t.max_ok))
        goto end;
    if (!TEST_int_eq(SSL_CTX_get_min_proto_version(ctx), t.expected_min))
        goto end;
    if (!TEST_int_eq(SSL_CTX_get_max_proto_version(ctx), t.expected_max))
        goto end;

    if (!TEST_int_eq(SSL_set_min_proto_version(ssl, t.min_version), t.min_ok))
        goto end;
    if (!TEST_int_eq(SSL_set_max_proto_version(ssl, t.max_version), t.max_ok))
        goto end;
    if (!TEST_int_eq(SSL_get_min_proto_version(ssl), t.expected_min))
        goto end;
    if (!TEST_int_eq(SSL_get_max_proto_version(ssl), t.expected_max))
        goto end;

    testresult = 1;

  end:
    SSL_free(ssl);
    SSL_CTX_free(ctx);
    return testresult;
}
