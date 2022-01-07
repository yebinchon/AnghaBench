
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int X509_STORE_CTX ;
typedef int X509 ;
struct TYPE_2__ {int depth; int error; int quiet; int return_error; } ;


 int ASN1_TIME_print (int ,int ) ;
 int BIO_printf (int ,char*,...) ;
 int BIO_puts (int ,char*) ;
 int X509_NAME_print_ex (int ,int ,int ,int ) ;
 int * X509_STORE_CTX_get_current_cert (int *) ;
 int X509_STORE_CTX_get_error (int *) ;
 int X509_STORE_CTX_get_error_depth (int *) ;
 int X509_V_ERR_CERT_CHAIN_TOO_LONG ;






 int X509_V_OK ;
 int X509_get0_notAfter (int *) ;
 int X509_get0_notBefore (int *) ;
 int X509_get_issuer_name (int *) ;
 int X509_get_subject_name (int *) ;
 int X509_verify_cert_error_string (int) ;
 int bio_err ;
 int get_nameopt () ;
 int policies_print (int *) ;
 TYPE_1__ verify_args ;

int verify_callback(int ok, X509_STORE_CTX *ctx)
{
    X509 *err_cert;
    int err, depth;

    err_cert = X509_STORE_CTX_get_current_cert(ctx);
    err = X509_STORE_CTX_get_error(ctx);
    depth = X509_STORE_CTX_get_error_depth(ctx);

    if (!verify_args.quiet || !ok) {
        BIO_printf(bio_err, "depth=%d ", depth);
        if (err_cert != ((void*)0)) {
            X509_NAME_print_ex(bio_err,
                               X509_get_subject_name(err_cert),
                               0, get_nameopt());
            BIO_puts(bio_err, "\n");
        } else {
            BIO_puts(bio_err, "<no cert>\n");
        }
    }
    if (!ok) {
        BIO_printf(bio_err, "verify error:num=%d:%s\n", err,
                   X509_verify_cert_error_string(err));
        if (verify_args.depth < 0 || verify_args.depth >= depth) {
            if (!verify_args.return_error)
                ok = 1;
            verify_args.error = err;
        } else {
            ok = 0;
            verify_args.error = X509_V_ERR_CERT_CHAIN_TOO_LONG;
        }
    }
    switch (err) {
    case 128:
        BIO_puts(bio_err, "issuer= ");
        X509_NAME_print_ex(bio_err, X509_get_issuer_name(err_cert),
                           0, get_nameopt());
        BIO_puts(bio_err, "\n");
        break;
    case 132:
    case 130:
        BIO_printf(bio_err, "notBefore=");
        ASN1_TIME_print(bio_err, X509_get0_notBefore(err_cert));
        BIO_printf(bio_err, "\n");
        break;
    case 133:
    case 131:
        BIO_printf(bio_err, "notAfter=");
        ASN1_TIME_print(bio_err, X509_get0_notAfter(err_cert));
        BIO_printf(bio_err, "\n");
        break;
    case 129:
        if (!verify_args.quiet)
            policies_print(ctx);
        break;
    }
    if (err == X509_V_OK && ok == 2 && !verify_args.quiet)
        policies_print(ctx);
    if (ok && !verify_args.quiet)
        BIO_printf(bio_err, "verify return:%d\n", ok);
    return ok;
}
