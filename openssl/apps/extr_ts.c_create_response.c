
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TS_RESP_CTX ;
typedef int TS_RESP ;
typedef int EVP_MD ;
typedef int CONF ;
typedef int BIO ;


 int BIO_free_all (int *) ;
 int * BIO_new_file (char const*,char*) ;
 char* TS_CONF_get_tsa_section (int *,char const*) ;
 int TS_CONF_set_accuracy (int *,char const*,int *) ;
 int TS_CONF_set_certs (int *,char const*,char const*,int *) ;
 int TS_CONF_set_clock_precision_digits (int *,char const*,int *) ;
 int TS_CONF_set_crypto_device (int *,char const*,char const*) ;
 int TS_CONF_set_def_policy (int *,char const*,char const*,int *) ;
 int TS_CONF_set_digests (int *,char const*,int *) ;
 int TS_CONF_set_ess_cert_id_chain (int *,char const*,int *) ;
 int TS_CONF_set_ess_cert_id_digest (int *,char const*,int *) ;
 int TS_CONF_set_ordering (int *,char const*,int *) ;
 int TS_CONF_set_policies (int *,char const*,int *) ;
 int TS_CONF_set_serial (int *,char const*,int ,int *) ;
 int TS_CONF_set_signer_cert (int *,char const*,char const*,int *) ;
 int TS_CONF_set_signer_digest (int *,char const*,int *,int *) ;
 int TS_CONF_set_signer_key (int *,char const*,char const*,char const*,int *) ;
 int TS_CONF_set_tsa_name (int *,char const*,int *) ;
 int TS_RESP_CTX_free (int *) ;
 int * TS_RESP_CTX_new () ;
 int TS_RESP_CTX_set_signer_digest (int *,int const*) ;
 int * TS_RESP_create_response (int *,int *) ;
 int TS_RESP_free (int *) ;
 int serial_cb ;

__attribute__((used)) static TS_RESP *create_response(CONF *conf, const char *section, const char *engine,
                                const char *queryfile, const char *passin,
                                const char *inkey, const EVP_MD *md, const char *signer,
                                const char *chain, const char *policy)
{
    int ret = 0;
    TS_RESP *response = ((void*)0);
    BIO *query_bio = ((void*)0);
    TS_RESP_CTX *resp_ctx = ((void*)0);

    if ((query_bio = BIO_new_file(queryfile, "rb")) == ((void*)0))
        goto end;
    if ((section = TS_CONF_get_tsa_section(conf, section)) == ((void*)0))
        goto end;
    if ((resp_ctx = TS_RESP_CTX_new()) == ((void*)0))
        goto end;
    if (!TS_CONF_set_serial(conf, section, serial_cb, resp_ctx))
        goto end;

    if (!TS_CONF_set_crypto_device(conf, section, engine))
        goto end;

    if (!TS_CONF_set_signer_cert(conf, section, signer, resp_ctx))
        goto end;
    if (!TS_CONF_set_certs(conf, section, chain, resp_ctx))
        goto end;
    if (!TS_CONF_set_signer_key(conf, section, inkey, passin, resp_ctx))
        goto end;

    if (md) {
        if (!TS_RESP_CTX_set_signer_digest(resp_ctx, md))
            goto end;
    } else if (!TS_CONF_set_signer_digest(conf, section, ((void*)0), resp_ctx)) {
            goto end;
    }

    if (!TS_CONF_set_ess_cert_id_digest(conf, section, resp_ctx))
        goto end;
    if (!TS_CONF_set_def_policy(conf, section, policy, resp_ctx))
        goto end;
    if (!TS_CONF_set_policies(conf, section, resp_ctx))
        goto end;
    if (!TS_CONF_set_digests(conf, section, resp_ctx))
        goto end;
    if (!TS_CONF_set_accuracy(conf, section, resp_ctx))
        goto end;
    if (!TS_CONF_set_clock_precision_digits(conf, section, resp_ctx))
        goto end;
    if (!TS_CONF_set_ordering(conf, section, resp_ctx))
        goto end;
    if (!TS_CONF_set_tsa_name(conf, section, resp_ctx))
        goto end;
    if (!TS_CONF_set_ess_cert_id_chain(conf, section, resp_ctx))
        goto end;
    if ((response = TS_RESP_create_response(resp_ctx, query_bio)) == ((void*)0))
        goto end;
    ret = 1;

 end:
    if (!ret) {
        TS_RESP_free(response);
        response = ((void*)0);
    }
    TS_RESP_CTX_free(resp_ctx);
    BIO_free_all(query_bio);
    return response;
}
