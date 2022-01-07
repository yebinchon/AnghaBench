
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE_CTX ;
typedef int X509 ;


 int BIO_printf (int ,char*,...) ;
 int ERR_clear_error () ;
 int X509_NAME_print_ex (int ,int ,int ,int ) ;
 scalar_t__ X509_STORE_CTX_get0_parent_ctx (int *) ;
 int * X509_STORE_CTX_get_current_cert (int *) ;
 int X509_STORE_CTX_get_error (int *) ;
 int X509_STORE_CTX_get_error_depth (int *) ;
 int X509_V_OK ;
 int X509_get_subject_name (int *) ;
 int X509_verify_cert_error_string (int) ;
 int bio_err ;
 int get_nameopt () ;
 int policies_print (int *) ;
 int v_verbose ;

__attribute__((used)) static int cb(int ok, X509_STORE_CTX *ctx)
{
    int cert_error = X509_STORE_CTX_get_error(ctx);
    X509 *current_cert = X509_STORE_CTX_get_current_cert(ctx);

    if (!ok) {
        if (current_cert != ((void*)0)) {
            X509_NAME_print_ex(bio_err,
                            X509_get_subject_name(current_cert),
                            0, get_nameopt());
            BIO_printf(bio_err, "\n");
        }
        BIO_printf(bio_err, "%serror %d at %d depth lookup: %s\n",
               X509_STORE_CTX_get0_parent_ctx(ctx) ? "[CRL path] " : "",
               cert_error,
               X509_STORE_CTX_get_error_depth(ctx),
               X509_verify_cert_error_string(cert_error));







        switch (cert_error) {
        case 130:
            policies_print(ctx);

        case 137:

        case 134:

        case 133:
        case 132:
        case 129:
        case 131:
        case 136:
        case 135:
        case 128:
            ok = 1;
        }

        return ok;

    }
    if (cert_error == X509_V_OK && ok == 2)
        policies_print(ctx);
    if (!v_verbose)
        ERR_clear_error();
    return ok;
}
