
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE ;
typedef int X509 ;
typedef int CMS_ContentInfo ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (char*,char*) ;
 int CMS_ContentInfo_free (int *) ;
 int CMS_verify (int *,int *,int *,int *,int *,int ) ;
 int ERR_load_crypto_strings () ;
 int ERR_print_errors_fp (int ) ;
 int OpenSSL_add_all_algorithms () ;
 int * PEM_read_bio_X509 (int *,int *,int ,int *) ;
 int * SMIME_read_CMS (int *,int **) ;
 int X509_STORE_add_cert (int *,int *) ;
 int * X509_STORE_new () ;
 int X509_free (int *) ;
 int fprintf (int ,char*) ;
 int stderr ;

int main(int argc, char **argv)
{
    BIO *in = ((void*)0), *out = ((void*)0), *tbio = ((void*)0), *cont = ((void*)0);
    X509_STORE *st = ((void*)0);
    X509 *cacert = ((void*)0);
    CMS_ContentInfo *cms = ((void*)0);

    int ret = 1;

    OpenSSL_add_all_algorithms();
    ERR_load_crypto_strings();



    st = X509_STORE_new();


    tbio = BIO_new_file("cacert.pem", "r");

    if (!tbio)
        goto err;

    cacert = PEM_read_bio_X509(tbio, ((void*)0), 0, ((void*)0));

    if (!cacert)
        goto err;

    if (!X509_STORE_add_cert(st, cacert))
        goto err;



    in = BIO_new_file("smout.txt", "r");

    if (!in)
        goto err;


    cms = SMIME_read_CMS(in, &cont);

    if (!cms)
        goto err;


    out = BIO_new_file("smver.txt", "w");
    if (!out)
        goto err;

    if (!CMS_verify(cms, ((void*)0), st, cont, out, 0)) {
        fprintf(stderr, "Verification Failure\n");
        goto err;
    }

    fprintf(stderr, "Verification Successful\n");

    ret = 0;

 err:

    if (ret) {
        fprintf(stderr, "Error Verifying Data\n");
        ERR_print_errors_fp(stderr);
    }

    CMS_ContentInfo_free(cms);
    X509_free(cacert);
    BIO_free(in);
    BIO_free(out);
    BIO_free(tbio);
    return ret;
}
