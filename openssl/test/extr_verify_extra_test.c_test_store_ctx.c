
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE_CTX ;
typedef int X509 ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (int ,char*) ;
 int * PEM_read_bio_X509 (int *,int *,int ,int *) ;
 int X509_STORE_CTX_free (int *) ;
 int X509_STORE_CTX_init (int *,int *,int *,int *) ;
 int * X509_STORE_CTX_new () ;
 int X509_free (int *) ;
 int X509_verify_cert (int *) ;
 int bad_f ;

__attribute__((used)) static int test_store_ctx(void)
{
    X509_STORE_CTX *sctx = ((void*)0);
    X509 *x = ((void*)0);
    BIO *bio = ((void*)0);
    int testresult = 0, ret;

    bio = BIO_new_file(bad_f, "r");
    if (bio == ((void*)0))
        goto err;

    x = PEM_read_bio_X509(bio, ((void*)0), 0, ((void*)0));
    if (x == ((void*)0))
        goto err;

    sctx = X509_STORE_CTX_new();
    if (sctx == ((void*)0))
        goto err;

    if (!X509_STORE_CTX_init(sctx, ((void*)0), x, ((void*)0)))
        goto err;


    ret = X509_verify_cert(sctx);

    if (ret == 0) {

        testresult = 1;
    }

 err:
    X509_STORE_CTX_free(sctx);
    X509_free(x);
    BIO_free(bio);
    return testresult;
}
