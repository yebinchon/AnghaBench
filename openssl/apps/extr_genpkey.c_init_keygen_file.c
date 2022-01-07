
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef int ENGINE ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (char const*,char*) ;
 int BIO_printf (int ,char*,char const*) ;
 int BIO_puts (int ,char*) ;
 int ERR_print_errors (int ) ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new (int *,int *) ;
 int EVP_PKEY_free (int *) ;
 scalar_t__ EVP_PKEY_keygen_init (int *) ;
 int * PEM_read_bio_Parameters (int *,int *) ;
 int bio_err ;

__attribute__((used)) static int init_keygen_file(EVP_PKEY_CTX **pctx, const char *file, ENGINE *e)
{
    BIO *pbio;
    EVP_PKEY *pkey = ((void*)0);
    EVP_PKEY_CTX *ctx = ((void*)0);
    if (*pctx) {
        BIO_puts(bio_err, "Parameters already set!\n");
        return 0;
    }

    pbio = BIO_new_file(file, "r");
    if (pbio == ((void*)0)) {
        BIO_printf(bio_err, "Can't open parameter file %s\n", file);
        return 0;
    }

    pkey = PEM_read_bio_Parameters(pbio, ((void*)0));
    BIO_free(pbio);

    if (pkey == ((void*)0)) {
        BIO_printf(bio_err, "Error reading parameter file %s\n", file);
        return 0;
    }

    ctx = EVP_PKEY_CTX_new(pkey, e);
    if (ctx == ((void*)0))
        goto err;
    if (EVP_PKEY_keygen_init(ctx) <= 0)
        goto err;
    EVP_PKEY_free(pkey);
    *pctx = ctx;
    return 1;

 err:
    BIO_puts(bio_err, "Error initializing context\n");
    ERR_print_errors(bio_err);
    EVP_PKEY_CTX_free(ctx);
    EVP_PKEY_free(pkey);
    return 0;

}
