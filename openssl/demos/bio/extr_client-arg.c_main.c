
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int SSL_CONF_CTX ;
typedef int SSL ;
typedef int BIO ;


 int BIO_NOCLOSE ;
 scalar_t__ BIO_do_connect (int *) ;
 scalar_t__ BIO_do_handshake (int *) ;
 int BIO_free (int *) ;
 int BIO_free_all (int *) ;
 int BIO_get_ssl (int *,int **) ;
 int * BIO_new_fp (int ,int ) ;
 int * BIO_new_ssl_connect (int *) ;
 int BIO_puts (int *,char*) ;
 int BIO_read (int *,char*,int) ;
 int BIO_set_conn_hostname (int *,char const*) ;
 int BIO_write (int *,char*,int) ;
 int ERR_print_errors_fp (int ) ;
 int SSL_CONF_CTX_finish (int *) ;
 int SSL_CONF_CTX_free (int *) ;
 int * SSL_CONF_CTX_new () ;
 int SSL_CONF_CTX_set_flags (int *,int ) ;
 int SSL_CONF_CTX_set_ssl_ctx (int *,int *) ;
 int SSL_CONF_FLAG_CLIENT ;
 int SSL_CONF_cmd_argv (int *,int*,char***) ;
 int * SSL_CTX_new (int ) ;
 int SSL_MODE_AUTO_RETRY ;
 int SSL_set_mode (int *,int ) ;
 int TLS_client_method () ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;

int main(int argc, char **argv)
{
    BIO *sbio = ((void*)0), *out = ((void*)0);
    int len;
    char tmpbuf[1024];
    SSL_CTX *ctx;
    SSL_CONF_CTX *cctx;
    SSL *ssl;
    char **args = argv + 1;
    const char *connect_str = "localhost:4433";
    int nargs = argc - 1;

    ctx = SSL_CTX_new(TLS_client_method());
    cctx = SSL_CONF_CTX_new();
    SSL_CONF_CTX_set_flags(cctx, SSL_CONF_FLAG_CLIENT);
    SSL_CONF_CTX_set_ssl_ctx(cctx, ctx);
    while (*args && **args == '-') {
        int rv;

        rv = SSL_CONF_cmd_argv(cctx, &nargs, &args);
        if (rv == -3) {
            fprintf(stderr, "Missing argument for %s\n", *args);
            goto end;
        }
        if (rv < 0) {
            fprintf(stderr, "Error in command %s\n", *args);
            ERR_print_errors_fp(stderr);
            goto end;
        }

        if (rv > 0)
            continue;

        if (strcmp(*args, "-connect") == 0) {
            connect_str = args[1];
            if (connect_str == ((void*)0)) {
                fprintf(stderr, "Missing -connect argument\n");
                goto end;
            }
            args += 2;
            nargs -= 2;
            continue;
        } else {
            fprintf(stderr, "Unknown argument %s\n", *args);
            goto end;
        }
    }

    if (!SSL_CONF_CTX_finish(cctx)) {
        fprintf(stderr, "Finish error\n");
        ERR_print_errors_fp(stderr);
        goto end;
    }







    sbio = BIO_new_ssl_connect(ctx);

    BIO_get_ssl(sbio, &ssl);

    if (!ssl) {
        fprintf(stderr, "Can't locate SSL pointer\n");
        goto end;
    }


    SSL_set_mode(ssl, SSL_MODE_AUTO_RETRY);



    BIO_set_conn_hostname(sbio, connect_str);

    out = BIO_new_fp(stdout, BIO_NOCLOSE);
    if (BIO_do_connect(sbio) <= 0) {
        fprintf(stderr, "Error connecting to server\n");
        ERR_print_errors_fp(stderr);
        goto end;
    }

    if (BIO_do_handshake(sbio) <= 0) {
        fprintf(stderr, "Error establishing SSL connection\n");
        ERR_print_errors_fp(stderr);
        goto end;
    }



    BIO_puts(sbio, "GET / HTTP/1.0\n\n");
    for (;;) {
        len = BIO_read(sbio, tmpbuf, 1024);
        if (len <= 0)
            break;
        BIO_write(out, tmpbuf, len);
    }
 end:
    SSL_CONF_CTX_free(cctx);
    BIO_free_all(sbio);
    BIO_free(out);
    return 0;
}
