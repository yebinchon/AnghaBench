
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PROVIDER ;


 int BIO_printf (int ,char*) ;
 int * OSSL_PROVIDER_load (int *,char const*) ;
 int OSSL_PROVIDER_unload (int *) ;
 int bio_err ;

__attribute__((used)) static int load_fips_prov_and_run_self_test(const char *prov_name)
{
    int ret = 0;
    OSSL_PROVIDER *prov = ((void*)0);

    prov = OSSL_PROVIDER_load(((void*)0), prov_name);
    if (prov == ((void*)0)) {
        BIO_printf(bio_err, "Failed to load FIPS module\n");
        goto end;
    }
    ret = 1;
end:
    OSSL_PROVIDER_unload(prov);
    return ret;
}
