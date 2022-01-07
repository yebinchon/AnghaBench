
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_EXTENSION ;
typedef int X509 ;


 int * OCSP_url_svcloc_new (int ,char const**) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int X509_EXTENSION_free (int *) ;
 int X509_free (int *) ;
 int X509_get_issuer_name (int *) ;
 int get_cert (int **) ;

__attribute__((used)) static int test_ocsp_url_svcloc_new(void)
{
    static const char * urls[] = {
        "www.openssl.org",
        "www.openssl.net",
        ((void*)0)
    };

    X509 *issuer = ((void*)0);
    X509_EXTENSION * ext = ((void*)0);
    int ret = 0;

    if (!TEST_true(get_cert(&issuer)))
        goto err;




    ext = OCSP_url_svcloc_new(X509_get_issuer_name(issuer), urls);
    if (!TEST_ptr(ext))
        goto err;

    X509_EXTENSION_free(ext);
    ret = 1;
err:
    X509_free(issuer);
    return ret;
}
