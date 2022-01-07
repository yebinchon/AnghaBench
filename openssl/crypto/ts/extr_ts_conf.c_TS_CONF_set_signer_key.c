
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TS_RESP_CTX ;
typedef int EVP_PKEY ;
typedef int CONF ;


 int ENV_SIGNER_KEY ;
 int EVP_PKEY_free (int *) ;
 char* NCONF_get_string (int *,char const*,int ) ;
 int * TS_CONF_load_key (char const*,char const*) ;
 int TS_RESP_CTX_set_signer_key (int *,int *) ;
 int ts_CONF_lookup_fail (char const*,int ) ;

int TS_CONF_set_signer_key(CONF *conf, const char *section,
                           const char *key, const char *pass,
                           TS_RESP_CTX *ctx)
{
    int ret = 0;
    EVP_PKEY *key_obj = ((void*)0);
    if (!key)
        key = NCONF_get_string(conf, section, ENV_SIGNER_KEY);
    if (!key) {
        ts_CONF_lookup_fail(section, ENV_SIGNER_KEY);
        goto err;
    }
    if ((key_obj = TS_CONF_load_key(key, pass)) == ((void*)0))
        goto err;
    if (!TS_RESP_CTX_set_signer_key(ctx, key_obj))
        goto err;

    ret = 1;
 err:
    EVP_PKEY_free(key_obj);
    return ret;
}
