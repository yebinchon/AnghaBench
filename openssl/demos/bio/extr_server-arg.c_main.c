
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int SSL_CTX ;
typedef int SSL_CONF_CTX ;
typedef int BIO ;


 scalar_t__ BIO_do_accept (int *) ;
 int BIO_free (int *) ;
 int BIO_free_all (int *) ;
 int * BIO_new_accept (char*) ;
 int * BIO_new_ssl (int *,int ) ;
 int * BIO_pop (int *) ;
 int BIO_read (int *,char*,int) ;
 int BIO_set_accept_bios (int *,int *) ;
 int ERR_print_errors_fp (int ) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int SSL_CERT_SET_FIRST ;
 int SSL_CERT_SET_NEXT ;
 int SSL_CONF_CTX_finish (int *) ;
 int * SSL_CONF_CTX_new () ;
 int SSL_CONF_CTX_set_flags (int *,int ) ;
 int SSL_CONF_CTX_set_ssl_ctx (int *,int *) ;
 int SSL_CONF_FLAG_CERTIFICATE ;
 int SSL_CONF_FLAG_SERVER ;
 int SSL_CONF_cmd_argv (int *,int*,char***) ;
 int * SSL_CTX_get0_certificate (int *) ;
 int * SSL_CTX_new (int ) ;
 int SSL_CTX_set_current_cert (int *,int ) ;
 int TLS_server_method () ;
 int X509_NAME_print_ex_fp (int ,int ,int ,int ) ;
 int X509_get_subject_name (int *) ;
 int XN_FLAG_ONELINE ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int fwrite (char*,int,int,int ) ;
 int printf (char*) ;
 int stderr ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;

int main(int argc, char *argv[])
{
    char *port = "*:4433";
    BIO *ssl_bio, *tmp;
    SSL_CTX *ctx;
    SSL_CONF_CTX *cctx;
    char buf[512];
    BIO *in = ((void*)0);
    int ret = EXIT_FAILURE, i;
    char **args = argv + 1;
    int nargs = argc - 1;

    ctx = SSL_CTX_new(TLS_server_method());

    cctx = SSL_CONF_CTX_new();
    SSL_CONF_CTX_set_flags(cctx, SSL_CONF_FLAG_SERVER);
    SSL_CONF_CTX_set_flags(cctx, SSL_CONF_FLAG_CERTIFICATE);
    SSL_CONF_CTX_set_ssl_ctx(cctx, ctx);
    while (*args && **args == '-') {
        int rv;

        rv = SSL_CONF_cmd_argv(cctx, &nargs, &args);
        if (rv == -3) {
            fprintf(stderr, "Missing argument for %s\n", *args);
            goto err;
        }
        if (rv < 0) {
            fprintf(stderr, "Error in command %s\n", *args);
            ERR_print_errors_fp(stderr);
            goto err;
        }

        if (rv > 0)
            continue;

        if (strcmp(*args, "-port") == 0) {
            port = args[1];
            if (port == ((void*)0)) {
                fprintf(stderr, "Missing -port argument\n");
                goto err;
            }
            args += 2;
            nargs -= 2;
            continue;
        } else {
            fprintf(stderr, "Unknown argument %s\n", *args);
            goto err;
        }
    }

    if (!SSL_CONF_CTX_finish(cctx)) {
        fprintf(stderr, "Finish error\n");
        ERR_print_errors_fp(stderr);
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
