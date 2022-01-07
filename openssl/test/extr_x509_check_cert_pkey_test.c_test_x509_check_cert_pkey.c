
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_REQ ;
typedef int X509 ;
typedef int EVP_PKEY ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (int ,char*) ;
 int EVP_PKEY_free (int *) ;
 int * PEM_read_bio_PrivateKey (int *,int *,int *,int *) ;
 int * PEM_read_bio_X509 (int *,int *,int *,int *) ;
 int * PEM_read_bio_X509_REQ (int *,int *,int *,int *) ;
 int TEST_error (char*,...) ;
 int TEST_int_eq (int,int) ;
 int TEST_ptr (int *) ;
 int X509_REQ_check_private_key (int *,int *) ;
 int X509_REQ_free (int *) ;
 int X509_check_private_key (int *,int *) ;
 int X509_free (int *) ;
 int c ;
 int e ;
 int k ;
 scalar_t__ strcmp (int ,char*) ;
 int t ;

__attribute__((used)) static int test_x509_check_cert_pkey(void)
{
    BIO *bio = ((void*)0);
    X509 *x509 = ((void*)0);
    X509_REQ *x509_req = ((void*)0);
    EVP_PKEY *pkey = ((void*)0);
    int ret = 0, type = 0, expected = 0, result = 0;





    if (strcmp(t, "cert") == 0) {
        type = 1;
    } else if (strcmp(t, "req") == 0) {
        type = 2;
    } else {
        TEST_error("invalid 'type'");
        goto failed;
    }

    if (strcmp(e, "ok") == 0) {
        expected = 1;
    } else if (strcmp(e, "failed") == 0) {
        expected = 0;
    } else {
        TEST_error("invalid 'expected'");
        goto failed;
    }


    if (!TEST_ptr(bio = BIO_new_file(k, "r")))
        goto failed;

    if (!TEST_ptr(pkey = PEM_read_bio_PrivateKey(bio, ((void*)0), ((void*)0), ((void*)0))))
        goto failed;

    BIO_free(bio);


    if (!TEST_ptr(bio = BIO_new_file(c, "r")))
        goto failed;

    switch (type) {
    case 1:
        x509 = PEM_read_bio_X509(bio, ((void*)0), ((void*)0), ((void*)0));
        if (x509 == ((void*)0)) {
            TEST_error("read PEM x509 failed");
            goto failed;
        }

        result = X509_check_private_key(x509, pkey);
        break;
    case 2:
        x509_req = PEM_read_bio_X509_REQ(bio, ((void*)0), ((void*)0), ((void*)0));
        if (x509_req == ((void*)0)) {
            TEST_error("read PEM x509 req failed");
            goto failed;
        }

        result = X509_REQ_check_private_key(x509_req, pkey);
        break;
    default:

        break;
    }

    if (!TEST_int_eq(result, expected)) {
        TEST_error("check private key: expected: %d, got: %d", expected, result);
        goto failed;
    }

    ret = 1;
failed:
    BIO_free(bio);
    X509_free(x509);
    X509_REQ_free(x509_req);
    EVP_PKEY_free(pkey);
    return ret;
}
