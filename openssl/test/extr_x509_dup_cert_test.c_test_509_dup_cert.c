
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE_CTX ;
typedef int X509_STORE ;
typedef int X509_LOOKUP ;


 scalar_t__ TEST_ptr (int *) ;
 scalar_t__ TEST_true (int ) ;
 int X509_FILETYPE_PEM ;
 int X509_LOOKUP_file () ;
 int X509_STORE_CTX_free (int *) ;
 int * X509_STORE_add_lookup (int *,int ) ;
 int X509_STORE_free (int *) ;
 int * X509_STORE_new () ;
 int X509_load_cert_file (int *,char const*,int ) ;
 char* test_get_argument (int) ;

__attribute__((used)) static int test_509_dup_cert(int n)
{
    int ret = 0;
    X509_STORE_CTX *sctx = ((void*)0);
    X509_STORE *store = ((void*)0);
    X509_LOOKUP *lookup = ((void*)0);
    const char *cert_f = test_get_argument(n);

    if (TEST_ptr(store = X509_STORE_new())
        && TEST_ptr(lookup = X509_STORE_add_lookup(store, X509_LOOKUP_file()))
        && TEST_true(X509_load_cert_file(lookup, cert_f, X509_FILETYPE_PEM))
        && TEST_true(X509_load_cert_file(lookup, cert_f, X509_FILETYPE_PEM)))
        ret = 1;

    X509_STORE_CTX_free(sctx);
    X509_STORE_free(store);
    return ret;
}
