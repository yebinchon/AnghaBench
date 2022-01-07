
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_CRL ;
typedef int X509 ;
typedef int OCSP_REQ_CTX ;
typedef int BIO ;


 int BIO_free_all (int *) ;
 int * BIO_new_connect (char*) ;
 int BIO_printf (int ,char*,char*,char const*) ;
 int BIO_puts (int ,char*) ;
 int BIO_set_conn_port (int *,char*) ;
 int ERR_print_errors (int ) ;
 int OCSP_REQ_CTX_add1_header (int *,char*,char*) ;
 int OCSP_REQ_CTX_free (int *) ;
 int OCSP_REQ_CTX_http (int *,char*,char*) ;
 int * OCSP_REQ_CTX_new (int *,int) ;
 int OCSP_parse_url (char const*,char**,char**,char**,int*) ;
 int OPENSSL_free (char*) ;
 int X509_CRL_http_nbio (int *,int **) ;
 int X509_http_nbio (int *,int **) ;
 int bio_err ;

__attribute__((used)) static int load_cert_crl_http(const char *url, X509 **pcert, X509_CRL **pcrl)
{
    char *host = ((void*)0), *port = ((void*)0), *path = ((void*)0);
    BIO *bio = ((void*)0);
    OCSP_REQ_CTX *rctx = ((void*)0);
    int use_ssl, rv = 0;
    if (!OCSP_parse_url(url, &host, &port, &path, &use_ssl))
        goto err;
    if (use_ssl) {
        BIO_puts(bio_err, "https not supported\n");
        goto err;
    }
    bio = BIO_new_connect(host);
    if (!bio || !BIO_set_conn_port(bio, port))
        goto err;
    rctx = OCSP_REQ_CTX_new(bio, 1024);
    if (rctx == ((void*)0))
        goto err;
    if (!OCSP_REQ_CTX_http(rctx, "GET", path))
        goto err;
    if (!OCSP_REQ_CTX_add1_header(rctx, "Host", host))
        goto err;
    if (pcert) {
        do {
            rv = X509_http_nbio(rctx, pcert);
        } while (rv == -1);
    } else {
        do {
            rv = X509_CRL_http_nbio(rctx, pcrl);
        } while (rv == -1);
    }

 err:
    OPENSSL_free(host);
    OPENSSL_free(path);
    OPENSSL_free(port);
    BIO_free_all(bio);
    OCSP_REQ_CTX_free(rctx);
    if (rv != 1) {
        BIO_printf(bio_err, "Error loading %s from %s\n",
                   pcert ? "certificate" : "CRL", url);
        ERR_print_errors(bio_err);
    }
    return rv;
}
