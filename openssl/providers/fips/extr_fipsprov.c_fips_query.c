
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PROVIDER ;
typedef int OSSL_ALGORITHM ;






 int const* fips_ciphers ;
 int const* fips_digests ;
 int const* fips_kdfs ;
 int const* fips_macs ;

__attribute__((used)) static const OSSL_ALGORITHM *fips_query(OSSL_PROVIDER *prov,
                                         int operation_id,
                                         int *no_cache)
{
    *no_cache = 0;
    switch (operation_id) {
    case 130:
        return fips_digests;
    case 131:
        return fips_ciphers;
    case 128:
        return fips_macs;
    case 129:
        return fips_kdfs;
    }
    return ((void*)0);
}
