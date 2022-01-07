
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_s_mem () ;
 int CONF_modules_load (int *,int *,int ) ;
 int NCONF_free (int *) ;
 int * app_load_config_bio (int *,int *) ;
 int write_config_fips_section (int *,char const*,unsigned char*,size_t,int *,int ) ;
 int write_config_header (int *,char const*,char const*) ;

__attribute__((used)) static CONF *generate_config_and_load(const char *prov_name,
                                      const char *section,
                                      unsigned char *module_mac,
                                      size_t module_mac_len)
{
    BIO *mem_bio = ((void*)0);
    CONF *conf = ((void*)0);

    mem_bio = BIO_new(BIO_s_mem());
    if (mem_bio == ((void*)0))
        return 0;
    if (!write_config_header(mem_bio, prov_name, section)
         || !write_config_fips_section(mem_bio, section, module_mac,
                                       module_mac_len, ((void*)0), 0))
        goto end;

    conf = app_load_config_bio(mem_bio, ((void*)0));
    if (conf == ((void*)0))
        goto end;

    if (!CONF_modules_load(conf, ((void*)0), 0))
        goto end;
    BIO_free(mem_bio);
    return conf;
end:
    NCONF_free(conf);
    BIO_free(mem_bio);
    return ((void*)0);
}
