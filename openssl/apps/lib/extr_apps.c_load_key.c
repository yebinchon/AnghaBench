
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int UI_METHOD ;
struct TYPE_6__ {char const* password; char const* prompt_info; } ;
typedef TYPE_1__ PW_CB_DATA ;
typedef int EVP_PKEY ;
typedef int ENGINE ;
typedef int BIO ;


 int BIO_free (int *) ;
 int BIO_printf (int ,char*,...) ;
 int ENGINE_finish (int *) ;
 scalar_t__ ENGINE_init (int *) ;
 int * ENGINE_load_private_key (int *,char const*,int *,TYPE_1__*) ;
 int ERR_print_errors (int ) ;
 int FORMAT_ASN1 ;
 int FORMAT_ENGINE ;
 int FORMAT_MSBLOB ;
 int FORMAT_PEM ;
 int FORMAT_PKCS12 ;
 int FORMAT_PVK ;
 int * PEM_read_bio_PrivateKey (int *,int *,int ,TYPE_1__*) ;
 int * b2i_PVK_bio (int *,int ,TYPE_1__*) ;
 int * b2i_PrivateKey_bio (int *) ;
 int bio_err ;
 int * bio_open_default (char const*,char,int) ;
 int * d2i_PrivateKey_bio (int *,int *) ;
 int * dup_bio_in (int) ;
 scalar_t__ get_ui_method () ;
 int load_pkcs12 (int *,char const*,int ,TYPE_1__*,int **,int *,int *) ;
 int stdin ;
 int unbuffer (int ) ;
 int wrap_password_callback ;

EVP_PKEY *load_key(const char *file, int format, int maybe_stdin,
                   const char *pass, ENGINE *e, const char *key_descrip)
{
    BIO *key = ((void*)0);
    EVP_PKEY *pkey = ((void*)0);
    PW_CB_DATA cb_data;

    cb_data.password = pass;
    cb_data.prompt_info = file;

    if (file == ((void*)0) && (!maybe_stdin || format == FORMAT_ENGINE)) {
        BIO_printf(bio_err, "no keyfile specified\n");
        goto end;
    }
    if (format == FORMAT_ENGINE) {
        if (e == ((void*)0)) {
            BIO_printf(bio_err, "no engine specified\n");
        } else {

            if (ENGINE_init(e)) {
                pkey = ENGINE_load_private_key(e, file,
                                               (UI_METHOD *)get_ui_method(),
                                               &cb_data);
                ENGINE_finish(e);
            }
            if (pkey == ((void*)0)) {
                BIO_printf(bio_err, "cannot load %s from engine\n", key_descrip);
                ERR_print_errors(bio_err);
            }



        }
        goto end;
    }
    if (file == ((void*)0) && maybe_stdin) {
        unbuffer(stdin);
        key = dup_bio_in(format);
    } else {
        key = bio_open_default(file, 'r', format);
    }
    if (key == ((void*)0))
        goto end;
    if (format == FORMAT_ASN1) {
        pkey = d2i_PrivateKey_bio(key, ((void*)0));
    } else if (format == FORMAT_PEM) {
        pkey = PEM_read_bio_PrivateKey(key, ((void*)0), wrap_password_callback, &cb_data);
    } else if (format == FORMAT_PKCS12) {
        if (!load_pkcs12(key, key_descrip, wrap_password_callback, &cb_data,
                         &pkey, ((void*)0), ((void*)0)))
            goto end;

    } else if (format == FORMAT_MSBLOB) {
        pkey = b2i_PrivateKey_bio(key);
    } else if (format == FORMAT_PVK) {
        pkey = b2i_PVK_bio(key, wrap_password_callback, &cb_data);

    } else {
        BIO_printf(bio_err, "bad input format specified for key file\n");
        goto end;
    }
 end:
    BIO_free(key);
    if (pkey == ((void*)0)) {
        BIO_printf(bio_err, "unable to load %s\n", key_descrip);
        ERR_print_errors(bio_err);
    }
    return pkey;
}
