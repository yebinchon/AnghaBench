
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int SSL_CTX ;
typedef int SSL ;
typedef int BIO ;


 int BIO_CLOSE ;
 int BIO_f_ssl () ;
 int BIO_free_all (int *) ;
 int * BIO_new (int ) ;
 int * BIO_push (int *,int *) ;
 int BIO_read (int *,char*,int) ;
 int BIO_s_connect () ;
 int BIO_set_conn_hostname (int *,char const*) ;
 int BIO_set_nbio (int *,int) ;
 int BIO_set_ssl (int *,int *,int ) ;
 scalar_t__ BIO_should_retry (int *) ;
 int BIO_write (int *,char*,int) ;
 char* CAFILE ;
 scalar_t__ ERR_peek_error () ;
 int ERR_print_errors_fp (int ) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 char* HOSTPORT ;
 char* OPENSSL_strdup (char const*) ;
 int SSL_CTX_free (int *) ;
 int SSL_CTX_load_verify_locations (int *,char const*,int *) ;
 int * SSL_CTX_new (int ) ;
 int SSL_CTX_set_verify (int *,int ,int *) ;
 int SSL_VERIFY_PEER ;
 int * SSL_new (int *) ;
 scalar_t__ SSL_set1_host (int *,char*) ;
 int SSL_set_connect_state (int *) ;
 int TLS_client_method () ;
 int dbug_init () ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int fwrite (char*,int,int,int ) ;
 int perror (char*) ;
 int sleep (int) ;
 int sock_init () ;
 int stderr ;
 int stdout ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

int main(int argc, char *argv[])
{
    const char *hostport = HOSTPORT;
    const char *CAfile = CAFILE;
    char *hostname;
    char *cp;
    BIO *out = ((void*)0);
    char buf[1024 * 10], *p;
    SSL_CTX *ssl_ctx = ((void*)0);
    SSL *ssl;
    BIO *ssl_bio;
    int i, len, off, ret = EXIT_FAILURE;

    if (argc > 1)
        hostport = argv[1];
    if (argc > 2)
        CAfile = argv[2];

    hostname = OPENSSL_strdup(hostport);
    if ((cp = strchr(hostname, ':')) != ((void*)0))
        *cp = 0;






    ssl_ctx = SSL_CTX_new(TLS_client_method());


    SSL_CTX_set_verify(ssl_ctx, SSL_VERIFY_PEER, ((void*)0));
    SSL_CTX_load_verify_locations(ssl_ctx, CAfile, ((void*)0));


    ssl = SSL_new(ssl_ctx);
    SSL_set_connect_state(ssl);


    if (SSL_set1_host(ssl, hostname) <= 0)
        goto err;


    ssl_bio = BIO_new(BIO_f_ssl());
    BIO_set_ssl(ssl_bio, ssl, BIO_CLOSE);


    out = BIO_new(BIO_s_connect());
    BIO_set_conn_hostname(out, hostport);
    BIO_set_nbio(out, 1);
    out = BIO_push(ssl_bio, out);

    p = "GET / HTTP/1.0\r\n\r\n";
    len = strlen(p);

    off = 0;
    for (;;) {
        i = BIO_write(out, &(p[off]), len);
        if (i <= 0) {
            if (BIO_should_retry(out)) {
                fprintf(stderr, "write DELAY\n");
                sleep(1);
                continue;
            } else {
                goto err;
            }
        }
        off += i;
        len -= i;
        if (len <= 0)
            break;
    }

    for (;;) {
        i = BIO_read(out, buf, sizeof(buf));
        if (i == 0)
            break;
        if (i < 0) {
            if (BIO_should_retry(out)) {
                fprintf(stderr, "read DELAY\n");
                sleep(1);
                continue;
            }
            goto err;
        }
        fwrite(buf, 1, i, stdout);
    }

    ret = EXIT_SUCCESS;
    goto done;

 err:
    if (ERR_peek_error() == 0) {
        fprintf(stderr, "errno=%d ", errno);
        perror("error");
    } else {
        ERR_print_errors_fp(stderr);
    }
 done:
    BIO_free_all(out);
    SSL_CTX_free(ssl_ctx);
    return ret;
}
