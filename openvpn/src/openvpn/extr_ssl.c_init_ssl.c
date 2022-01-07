
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_root_ctx {int dummy; } ;
struct options {int ssl_flags; int management_flags; char* cert_file_inline; int ecdh_curve; int tls_server; int crl_file_inline; int crl_file; int extra_certs_file_inline; int extra_certs_file; int ca_path; int ca_file_inline; scalar_t__ ca_file; int priv_key_file_inline; int priv_key_file; int cert_file; int management_certificate; int cryptoapi_cert; int pkcs11_id; int pkcs11_id_management; scalar_t__* pkcs11_providers; int pkcs12_file_inline; int pkcs12_file; int cipher_list_tls13; int cipher_list; int tls_cert_profile; int dh_file_inline; int dh_file; } ;


 int ASSERT (int) ;
 int INLINE_FILE_TAG ;
 int MF_EXTERNAL_CERT ;
 int MF_EXTERNAL_KEY ;
 int M_WARN ;
 int SSLF_CRL_VERIFY_DIR ;
 int free (char*) ;
 int management ;
 char* management_query_cert (int ,int ) ;
 int msg (int ,char*,...) ;
 int tls_clear_error () ;
 int tls_ctx_check_cert_time (struct tls_root_ctx*) ;
 int tls_ctx_client_new (struct tls_root_ctx*) ;
 int tls_ctx_free (struct tls_root_ctx*) ;
 int tls_ctx_load_ca (struct tls_root_ctx*,scalar_t__,int ,int ,int ) ;
 int tls_ctx_load_cert_file (struct tls_root_ctx*,int ,char*) ;
 int tls_ctx_load_cryptoapi (struct tls_root_ctx*,int ) ;
 int tls_ctx_load_dh_params (struct tls_root_ctx*,int ,int ) ;
 int tls_ctx_load_ecdh_params (struct tls_root_ctx*,int ) ;
 int tls_ctx_load_extra_certs (struct tls_root_ctx*,int ,int ) ;
 scalar_t__ tls_ctx_load_pkcs12 (struct tls_root_ctx*,int ,int ,int) ;
 scalar_t__ tls_ctx_load_priv_file (struct tls_root_ctx*,int ,int ) ;
 int tls_ctx_personalise_random (struct tls_root_ctx*) ;
 int tls_ctx_reload_crl (struct tls_root_ctx*,int ,int ) ;
 int tls_ctx_restrict_ciphers (struct tls_root_ctx*,int ) ;
 int tls_ctx_restrict_ciphers_tls13 (struct tls_root_ctx*,int ) ;
 int tls_ctx_server_new (struct tls_root_ctx*) ;
 int tls_ctx_set_cert_profile (struct tls_root_ctx*,int ) ;
 int tls_ctx_set_options (struct tls_root_ctx*,int) ;
 scalar_t__ tls_ctx_use_management_external_key (struct tls_root_ctx*) ;
 int tls_ctx_use_pkcs11 (struct tls_root_ctx*,int ,int ) ;

void
init_ssl(const struct options *options, struct tls_root_ctx *new_ctx)
{
    ASSERT(((void*)0) != new_ctx);

    tls_clear_error();

    if (options->tls_server)
    {
        tls_ctx_server_new(new_ctx);

        if (options->dh_file)
        {
            tls_ctx_load_dh_params(new_ctx, options->dh_file,
                                   options->dh_file_inline);
        }
    }
    else
    {
        tls_ctx_client_new(new_ctx);
    }


    tls_ctx_set_cert_profile(new_ctx, options->tls_cert_profile);




    tls_ctx_restrict_ciphers(new_ctx, options->cipher_list);
    tls_ctx_restrict_ciphers_tls13(new_ctx, options->cipher_list_tls13);

    if (!tls_ctx_set_options(new_ctx, options->ssl_flags))
    {
        goto err;
    }

    if (options->pkcs12_file)
    {
        if (0 != tls_ctx_load_pkcs12(new_ctx, options->pkcs12_file,
                                     options->pkcs12_file_inline, !options->ca_file))
        {
            goto err;
        }
    }
    else if (options->cert_file)
    {
        tls_ctx_load_cert_file(new_ctx, options->cert_file, options->cert_file_inline);
    }

    if (options->priv_key_file)
    {
        if (0 != tls_ctx_load_priv_file(new_ctx, options->priv_key_file,
                                        options->priv_key_file_inline))
        {
            goto err;
        }
    }
    if (options->ca_file || options->ca_path)
    {
        tls_ctx_load_ca(new_ctx, options->ca_file, options->ca_file_inline,
                        options->ca_path, options->tls_server);
    }



    if (options->extra_certs_file)
    {
        tls_ctx_load_extra_certs(new_ctx, options->extra_certs_file, options->extra_certs_file_inline);
    }


    tls_ctx_check_cert_time(new_ctx);


    if (options->crl_file && !(options->ssl_flags & SSLF_CRL_VERIFY_DIR))
    {
        tls_ctx_reload_crl(new_ctx, options->crl_file, options->crl_file_inline);
    }


    if (options->tls_server)
    {
        tls_ctx_load_ecdh_params(new_ctx, options->ecdh_curve);
    }






    tls_clear_error();
    return;

err:
    tls_clear_error();
    tls_ctx_free(new_ctx);
    return;
}
