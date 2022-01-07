
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int TS_RESP_CTX ;
typedef int CONF ;


 int ENV_SIGNER_CERT ;
 char* NCONF_get_string (int *,char const*,int ) ;
 int * TS_CONF_load_cert (char const*) ;
 int TS_RESP_CTX_set_signer_cert (int *,int *) ;
 int X509_free (int *) ;
 int ts_CONF_lookup_fail (char const*,int ) ;

int TS_CONF_set_signer_cert(CONF *conf, const char *section,
                            const char *cert, TS_RESP_CTX *ctx)
{
    int ret = 0;
    X509 *cert_obj = ((void*)0);

    if (cert == ((void*)0)) {
        cert = NCONF_get_string(conf, section, ENV_SIGNER_CERT);
        if (cert == ((void*)0)) {
            ts_CONF_lookup_fail(section, ENV_SIGNER_CERT);
            goto err;
        }
    }
    if ((cert_obj = TS_CONF_load_cert(cert)) == ((void*)0))
        goto err;
    if (!TS_RESP_CTX_set_signer_cert(ctx, cert_obj))
        goto err;

    ret = 1;
 err:
    X509_free(cert_obj);
    return ret;
}
