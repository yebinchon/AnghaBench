
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pem_password_cb ;
typedef int X509 ;
typedef int BIO ;


 int BIO_free (int *) ;
 int BIO_printf (int ,char*,...) ;
 int ERR_print_errors (int ) ;
 int FORMAT_ASN1 ;
 int FORMAT_HTTP ;
 int FORMAT_PEM ;
 int FORMAT_PKCS12 ;
 int * PEM_read_bio_X509_AUX (int *,int *,int *,int *) ;
 int bio_err ;
 int * bio_open_default (char const*,char,int) ;
 int * d2i_X509_bio (int *,int *) ;
 int * dup_bio_in (int) ;
 int load_cert_crl_http (char const*,int **,int *) ;
 int load_pkcs12 (int *,char const*,int *,int *,int *,int **,int *) ;
 scalar_t__ password_callback ;
 int stdin ;
 int unbuffer (int ) ;

X509 *load_cert(const char *file, int format, const char *cert_descrip)
{
    X509 *x = ((void*)0);
    BIO *cert;

    if (format == FORMAT_HTTP) {

        load_cert_crl_http(file, &x, ((void*)0));

        return x;
    }

    if (file == ((void*)0)) {
        unbuffer(stdin);
        cert = dup_bio_in(format);
    } else {
        cert = bio_open_default(file, 'r', format);
    }
    if (cert == ((void*)0))
        goto end;

    if (format == FORMAT_ASN1) {
        x = d2i_X509_bio(cert, ((void*)0));
    } else if (format == FORMAT_PEM) {
        x = PEM_read_bio_X509_AUX(cert, ((void*)0),
                                  (pem_password_cb *)password_callback, ((void*)0));
    } else if (format == FORMAT_PKCS12) {
        if (!load_pkcs12(cert, cert_descrip, ((void*)0), ((void*)0), ((void*)0), &x, ((void*)0)))
            goto end;
    } else {
        BIO_printf(bio_err, "bad input format specified for %s\n", cert_descrip);
        goto end;
    }
 end:
    if (x == ((void*)0)) {
        BIO_printf(bio_err, "unable to load certificate\n");
        ERR_print_errors(bio_err);
    }
    BIO_free(cert);
    return x;
}
