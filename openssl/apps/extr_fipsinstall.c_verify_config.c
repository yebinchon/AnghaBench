
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF ;


 int BIO_printf (int ,char*) ;
 int INSTALL_STATUS_VAL ;
 int NCONF_free (int *) ;
 char* NCONF_get_string (int *,char const*,int ) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_hexstr2buf (char*,long*) ;
 int OSSL_PROV_FIPS_PARAM_INSTALL_MAC ;
 int OSSL_PROV_FIPS_PARAM_INSTALL_STATUS ;
 int OSSL_PROV_FIPS_PARAM_INSTALL_VERSION ;
 int OSSL_PROV_FIPS_PARAM_MODULE_MAC ;
 int VERSION_VAL ;
 int * app_load_config (char const*) ;
 int bio_err ;
 scalar_t__ memcmp (unsigned char*,unsigned char*,size_t) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int verify_config(const char *infile, const char *section,
                         unsigned char *module_mac, size_t module_mac_len,
                         unsigned char *install_mac, size_t install_mac_len)
{
    int ret = 0;
    char *s = ((void*)0);
    unsigned char *buf1 = ((void*)0), *buf2 = ((void*)0);
    long len;
    CONF *conf = ((void*)0);


    conf = app_load_config(infile);
    if (conf == ((void*)0))
        goto end;

    s = NCONF_get_string(conf, section, OSSL_PROV_FIPS_PARAM_INSTALL_VERSION);
    if (s == ((void*)0) || strcmp(s, VERSION_VAL) != 0) {
        BIO_printf(bio_err, "version not found\n");
        goto end;
    }
    s = NCONF_get_string(conf, section, OSSL_PROV_FIPS_PARAM_INSTALL_STATUS);
    if (s == ((void*)0) || strcmp(s, INSTALL_STATUS_VAL) != 0) {
        BIO_printf(bio_err, "install status not found\n");
        goto end;
    }
    s = NCONF_get_string(conf, section, OSSL_PROV_FIPS_PARAM_MODULE_MAC);
    if (s == ((void*)0)) {
        BIO_printf(bio_err, "Module integrity MAC not found\n");
        goto end;
    }
    buf1 = OPENSSL_hexstr2buf(s, &len);
    if (buf1 == ((void*)0)
            || (size_t)len != module_mac_len
            || memcmp(module_mac, buf1, module_mac_len) != 0) {
        BIO_printf(bio_err, "Module integrity mismatch\n");
        goto end;
    }
    s = NCONF_get_string(conf, section, OSSL_PROV_FIPS_PARAM_INSTALL_MAC);
    if (s == ((void*)0)) {
        BIO_printf(bio_err, "Install indicator MAC not found\n");
        goto end;
    }
    buf2 = OPENSSL_hexstr2buf(s, &len);
    if (buf2 == ((void*)0)
            || (size_t)len != install_mac_len
            || memcmp(install_mac, buf2, install_mac_len) != 0) {
        BIO_printf(bio_err, "Install indicator status mismatch\n");
        goto end;
    }
    ret = 1;
end:
    OPENSSL_free(buf1);
    OPENSSL_free(buf2);
    NCONF_free(conf);
    return ret;
}
