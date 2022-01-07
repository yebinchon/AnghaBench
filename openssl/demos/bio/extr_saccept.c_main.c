
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int BIO ;


 scalar_t__ BIO_do_accept (int *) ;
 int BIO_free (int *) ;
 int BIO_free_all (int *) ;
 int * BIO_new_accept (char*) ;
 int * BIO_new_ssl (int *,int ) ;
 int * BIO_pop (int *) ;
 int BIO_read (int *,char*,int) ;
 int BIO_set_accept_bios (int *,int *) ;
 int CERT_FILE ;
 int ERR_print_errors_fp (int ) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int SSL_CTX_check_private_key (int *) ;
 int * SSL_CTX_new (int ) ;
 int SSL_CTX_use_PrivateKey_file (int *,int ,int ) ;
 int SSL_CTX_use_certificate_chain_file (int *,int ) ;
 int SSL_FILETYPE_PEM ;
 int TLS_server_method () ;
 int done ;
 int fflush (int ) ;
 int fwrite (char*,int,int,int ) ;
 int printf (char*) ;
 int sigsetup () ;
 int stderr ;
 int stdout ;

int main(int argc, char *argv[])
{
    char *port = ((void*)0);
    BIO *in = ((void*)0);
    BIO *ssl_bio, *tmp;
    SSL_CTX *ctx;
    char buf[512];
    int ret = EXIT_FAILURE, i;

    if (argc <= 1)
        port = "*:4433";
    else
        port = argv[1];

    ctx = SSL_CTX_new(TLS_server_method());
    if (!SSL_CTX_use_certificate_chain_file(ctx, CERT_FILE))
        goto err;
    if (!SSL_CTX_use_PrivateKey_file(ctx, CERT_FILE, SSL_FILETYPE_PEM))
        goto err;
    if (!SSL_CTX_check_private_key(ctx))
        goto err;


    ssl_bio = BIO_new_ssl(ctx, 0);

    if ((in = BIO_new_accept(port)) == ((void*)0))
        goto err;






    BIO_set_accept_bios(in, ssl_bio);


    sigsetup();

 again:






    if (BIO_do_accept(in) <= 0)
        goto err;

    while (!done) {
        i = BIO_read(in, buf, 512);
        if (i == 0) {





            printf("Done\n");
            tmp = BIO_pop(in);
            BIO_free_all(tmp);
            goto again;
        }
        if (i < 0)
            goto err;
        fwrite(buf, 1, i, stdout);
        fflush(stdout);
    }

    ret = EXIT_SUCCESS;
 err:
    if (ret != EXIT_SUCCESS)
        ERR_print_errors_fp(stderr);
    BIO_free(in);
    return ret;
}
