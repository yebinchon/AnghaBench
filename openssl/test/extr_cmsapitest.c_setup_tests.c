
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char BIO ;


 int ADD_TEST (int ) ;
 int BIO_free (char*) ;
 char* BIO_new_file (char*,char*) ;
 int PEM_read_bio_PrivateKey (char*,int *,int *,int *) ;
 int PEM_read_bio_X509 (char*,int **,int *,int *) ;
 int TEST_ptr (char*) ;
 int TEST_true (int ) ;
 int X509_free (int *) ;
 int * cert ;
 int privkey ;
 int test_encrypt_decrypt ;
 char* test_get_argument (int) ;

int setup_tests(void)
{
    char *certin = ((void*)0), *privkeyin = ((void*)0);
    BIO *certbio = ((void*)0), *privkeybio = ((void*)0);

    if (!TEST_ptr(certin = test_get_argument(0))
            || !TEST_ptr(privkeyin = test_get_argument(1)))
        return 0;

    certbio = BIO_new_file(certin, "r");
    if (!TEST_ptr(certbio))
        return 0;
    if (!TEST_true(PEM_read_bio_X509(certbio, &cert, ((void*)0), ((void*)0)))) {
        BIO_free(certbio);
        return 0;
    }
    BIO_free(certbio);

    privkeybio = BIO_new_file(privkeyin, "r");
    if (!TEST_ptr(privkeybio)) {
        X509_free(cert);
        cert = ((void*)0);
        return 0;
    }
    if (!TEST_true(PEM_read_bio_PrivateKey(privkeybio, &privkey, ((void*)0), ((void*)0)))) {
        BIO_free(privkeybio);
        X509_free(cert);
        cert = ((void*)0);
        return 0;
    }
    BIO_free(privkeybio);

    ADD_TEST(test_encrypt_decrypt);

    return 1;
}
