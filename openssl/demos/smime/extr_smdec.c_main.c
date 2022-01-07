
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
 int PKCS7_decrypt (int *,int *,int *,int *,int ) ;
 int PKCS7_free (int *) ;
 int * SMIME_read_PKCS7 (int *,int *) ;
 int X509_free (int *) ;
 int fprintf (int ,char*) ;
 int stderr ;

int main(int argc, char **argv)
{
    BIO *in = ((void*)0), *out = ((void*)0), *tbio = ((void*)0);
    X509 *rcert = ((void*)0);
    EVP_PKEY *rkey = ((void*)0);
    PKCS7 *p7 = ((void*)0);
    int ret = 1;

    OpenSSL_add_all_algorithms();
    ERR_load_crypto_strings();


    tbio = BIO_new_file("signer.pem", "r");

    if (!tbio)
        goto err;

    rcert = PEM_read_bio_X509(tbio, ((void*)0), 0, ((void*)0));

    BIO_reset(tbio);

    rkey = PEM_read_bio_PrivateKey(tbio, ((void*)0), 0, ((void*)0));

    if (!rcert || !rkey)
        goto err;



    in = BIO_new_file("smencr.txt", "r");

    if (!in)
        goto err;


    p7 = SMIME_read_PKCS7(in, ((void*)0));

    if (!p7)
        goto err;

    out = BIO_new_file("encrout.txt", "w");
    if (!out)
        goto err;


    if (!PKCS7_decrypt(p7, rkey, rcert, out, 0))
        goto err;

    ret = 0;

 err:
    if (ret) {
        fprintf(stderr, "Error Signing Data\n");
        ERR_print_errors_fp(stderr);
    }
    PKCS7_free(p7);
    X509_free(rcert);
    EVP_PKEY_free(rkey);
    BIO_free(in);
    BIO_free(out);
    BIO_free(tbio);

    return ret;

}
