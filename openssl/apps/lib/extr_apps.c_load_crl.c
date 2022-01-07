
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_CRL ;
typedef int BIO ;


 int BIO_free (int *) ;
 int BIO_printf (int ,char*) ;
 int ERR_print_errors (int ) ;
 int FORMAT_ASN1 ;
 int FORMAT_HTTP ;
 int FORMAT_PEM ;
 int * PEM_read_bio_X509_CRL (int *,int *,int *,int *) ;
 int bio_err ;
 int * bio_open_default (char const*,char,int) ;
 int * d2i_X509_CRL_bio (int *,int *) ;
 int load_cert_crl_http (char const*,int *,int **) ;

X509_CRL *load_crl(const char *infile, int format)
{
    X509_CRL *x = ((void*)0);
    BIO *in = ((void*)0);

    if (format == FORMAT_HTTP) {

        load_cert_crl_http(infile, ((void*)0), &x);

        return x;
    }

    in = bio_open_default(infile, 'r', format);
    if (in == ((void*)0))
        goto end;
    if (format == FORMAT_ASN1) {
        x = d2i_X509_CRL_bio(in, ((void*)0));
    } else if (format == FORMAT_PEM) {
        x = PEM_read_bio_X509_CRL(in, ((void*)0), ((void*)0), ((void*)0));
    } else {
        BIO_printf(bio_err, "bad input format specified for input crl\n");
        goto end;
    }
    if (x == ((void*)0)) {
        BIO_printf(bio_err, "unable to load CRL\n");
        ERR_print_errors(bio_err);
        goto end;
    }

 end:
    BIO_free(in);
    return x;
}
