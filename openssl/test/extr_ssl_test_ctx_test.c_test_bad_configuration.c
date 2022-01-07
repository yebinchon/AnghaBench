
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_TEST_CTX ;


 int * SSL_TEST_CTX_create (int ,int ) ;
 int SSL_TEST_CTX_free (int *) ;
 int TEST_ptr_null (int *) ;
 int * bad_configurations ;
 int conf ;

__attribute__((used)) static int test_bad_configuration(int idx)
{
    SSL_TEST_CTX *ctx;

    if (!TEST_ptr_null(ctx = SSL_TEST_CTX_create(conf,
                                                 bad_configurations[idx]))) {
        SSL_TEST_CTX_free(ctx);
        return 0;
    }

    return 1;
}
