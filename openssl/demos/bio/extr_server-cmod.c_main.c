
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int SSL_CTX ;
typedef int BIO ;


 scalar_t__ BIO_do_accept (int *) ;
 int BIO_free (int *) ;
 int BIO_free_all (int *) ;
 int * BIO_new_accept (char*) ;
 int * BIO_new_ssl (int *,int ) ;
 int * BIO_pop (int *) ;
 int BIO_read (int *,unsigned char*,int) ;
 int BIO_set_accept_bios (int *,int *) ;
 scalar_t__ BIO_should_retry (int *) ;
 scalar_t__ CONF_modules_load_file (char*,char*,int ) ;
 int ERR_print_errors_fp (int ) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ SSL_CTX_config (int *,char*) ;
 int * SSL_CTX_new (int ) ;
 int TLS_server_method () ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int fwrite (unsigned char*,int,int,int ) ;
 int printf (char*) ;
 int stderr ;
 int stdout ;

int main(int argc, char *argv[])
{
    unsigned char buf[512];
    char *port = "*:4433";
    BIO *in = ((void*)0);
    BIO *ssl_bio, *tmp;
    SSL_CTX *ctx;
    int ret = EXIT_FAILURE, i;

    ctx = SSL_CTX_new(TLS_server_method());

    if (CONF_modules_load_file("cmod.cnf", "testapp", 0) <= 0) {
        fprintf(stderr, "Error processing config file\n");
        goto err;
    }

    if (SSL_CTX_config(ctx, "server") == 0) {
        fprintf(stderr, "Error configuring server.\n");
        goto err;
    }


    ssl_bio = BIO_new_ssl(ctx, 0);

    if ((in = BIO_new_accept(port)) == ((void*)0))
        goto err;






    BIO_set_accept_bios(in, ssl_bio);

 again:






    if (BIO_do_accept(in) <= 0)
        goto err;

    for (;;) {
        i = BIO_read(in, buf, sizeof(buf));
        if (i == 0) {





            printf("Done\n");
            tmp = BIO_pop(in);
            BIO_free_all(tmp);
            goto again;
        }
        if (i < 0) {
            if (BIO_should_retry(in))
                continue;
            goto err;
        }
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
