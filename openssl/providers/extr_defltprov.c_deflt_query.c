
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PROVIDER ;
typedef int OSSL_ALGORITHM ;
 int const* deflt_ciphers ;
 int const* deflt_digests ;
 int const* deflt_kdfs ;
 int const* deflt_keyexch ;
 int const* deflt_keymgmt ;
 int const* deflt_macs ;
 int const* deflt_signature ;

__attribute__((used)) static const OSSL_ALGORITHM *deflt_query(OSSL_PROVIDER *prov,
                                         int operation_id,
                                         int *no_cache)
{
    *no_cache = 0;
    switch (operation_id) {
    case 133:
        return deflt_digests;
    case 134:
        return deflt_ciphers;
    case 129:
        return deflt_macs;
    case 132:
        return deflt_kdfs;
    case 130:
        return deflt_keymgmt;
    case 131:
        return deflt_keyexch;
    case 128:
        return deflt_signature;
    }
    return ((void*)0);
}
