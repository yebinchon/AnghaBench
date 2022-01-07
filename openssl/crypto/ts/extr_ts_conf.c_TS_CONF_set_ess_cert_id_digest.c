
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TS_RESP_CTX ;
typedef int EVP_MD ;
typedef int CONF ;


 int ENV_ESS_CERT_ID_ALG ;
 int * EVP_get_digestbyname (char const*) ;
 char* NCONF_get_string (int *,char const*,int ) ;
 int TS_RESP_CTX_set_ess_cert_id_digest (int *,int const*) ;
 int ts_CONF_invalid (char const*,int ) ;

int TS_CONF_set_ess_cert_id_digest(CONF *conf, const char *section,
                                   TS_RESP_CTX *ctx)
{
    int ret = 0;
    const EVP_MD *cert_md = ((void*)0);
    const char *md = NCONF_get_string(conf, section, ENV_ESS_CERT_ID_ALG);

    if (md == ((void*)0))
        md = "sha1";

    cert_md = EVP_get_digestbyname(md);
    if (cert_md == ((void*)0)) {
        ts_CONF_invalid(section, ENV_ESS_CERT_ID_ALG);
        goto err;
    }

    if (!TS_RESP_CTX_set_ess_cert_id_digest(ctx, cert_md))
        goto err;

    ret = 1;
err:
    return ret;
}
