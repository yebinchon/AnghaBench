
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int PKCS7 ;
typedef int EVP_PKEY ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (char*,char*) ;
 int BIO_reset (int *) ;
 int ERR_load_crypto_strings () ;
 int ERR_print_errors_fp (int ) ;
 int EVP_PKEY_free (int *) ;
 int OpenSSL_add_all_algorithms () ;
 int * PEM_read_bio_PrivateKey (int *,int *,int ,int *) ;
 int * PEM_read_bio_X509 (int *,int *,int ,int *) ;
 int PKCS7_PARTIAL ;
 int PKCS7_STREAM ;
 int PKCS7_free (int *) ;
 int * PKCS7_sign (int *,int *,int *,int *,int) ;
 int PKCS7_sign_add_signer (int *,int *,int *,int *,int ) ;
 int SMIME_write_PKCS7 (int *,int *,int *,int) ;
 int X509_free (int *) ;
 int fprintf (int ,char*) ;
 int stderr ;

int main(int argc, char **argv)
{
    BIO *in = ((void*)0), *out = ((void*)0), *tbio = ((void*)0);
    X509 *scert = ((void*)0), *scert2 = ((void*)0);
    EVP_PKEY *skey = ((void*)0), *skey2 = ((void*)0);
    PKCS7 *p7 = ((void*)0);
    int ret = 1;

    OpenSSL_add_all_algorithms();
    ERR_load_crypto_strings();

    tbio = BIO_new_file("signer.pem", "r");

    if (!tbio)
        goto err;

    scert = PEM_read_bio_X509(tbio, ((void*)0), 0, ((void*)0));

    BIO_reset(tbio);

    skey = PEM_read_bio_PrivateKey(tbio, ((void*)0), 0, ((void*)0));

    BIO_free(tbio);

    tbio = BIO_new_file("signer2.pem", "r");

    if (!tbio)
        goto err;

    scert2 = PEM_read_bio_X509(tbio, ((void*)0), 0, ((void*)0));

    BIO_reset(tbio);

    skey2 = PEM_read_bio_PrivateKey(tbio, ((void*)0), 0, ((void*)0));

    if (!scert2 || !skey2)
        goto err;

    in = BIO_new_file("sign.txt", "r");

    if (!in)
        goto err;

    p7 = PKCS7_sign(((void*)0), ((void*)0), ((void*)0), in, PKCS7_STREAM | PKCS7_PARTIAL);

    if (!p7)
        goto err;



    if (!PKCS7_sign_add_signer(p7, scert, skey, ((void*)0), 0))
        goto err;

    if (!PKCS7_sign_add_signer(p7, scert2, skey2, ((void*)0), 0))
        goto err;

    out = BIO_new_file("smout.txt", "w");
    if (!out)
        goto err;



    if (!SMIME_write_PKCS7(out, p7, in, PKCS7_STREAM))
        goto err;

    ret = 0;

 err:
    if (ret) {
        fprintf(stderr, "Error Signing Data\n");
        ERR_print_errors_fp(stderr);
    }
    PKCS7_free(p7);
    X509_free(scert);
    EVP_PKEY_free(skey);
    X509_free(scert2);
    EVP_PKEY_free(skey2);
    BIO_free(in);
    BIO_free(out);
    BIO_free(tbio);
    return ret;
}
