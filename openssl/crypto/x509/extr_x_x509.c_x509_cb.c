
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ex_pathlen; int ex_pcpathlen; int * sm2_id; int * rfc3779_asid; int * rfc3779_addr; int * nc; int * altname; int * policy_cache; int * crldp; int * akid; int * skid; int * aux; int ex_data; int ex_flags; int ex_nscert; int ex_xkusage; int ex_kusage; int ex_cached; } ;
typedef TYPE_1__ X509 ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int ASIdentifiers_free (int *) ;
 int ASN1_OCTET_STRING_free (int *) ;



 int AUTHORITY_KEYID_free (int *) ;
 int CRL_DIST_POINTS_free (int *) ;
 int CRYPTO_EX_INDEX_X509 ;
 int CRYPTO_free_ex_data (int ,TYPE_1__*,int *) ;
 int CRYPTO_new_ex_data (int ,TYPE_1__*,int *) ;
 int GENERAL_NAMES_free (int *) ;
 int IPAddressFamily_free ;
 int NAME_CONSTRAINTS_free (int *) ;
 int X509_CERT_AUX_free (int *) ;
 int policy_cache_free (int *) ;
 int sk_IPAddressFamily_pop_free (int *,int ) ;

__attribute__((used)) static int x509_cb(int operation, ASN1_VALUE **pval, const ASN1_ITEM *it,
                   void *exarg)
{
    X509 *ret = (X509 *)*pval;

    switch (operation) {

    case 130:
        CRYPTO_free_ex_data(CRYPTO_EX_INDEX_X509, ret, &ret->ex_data);
        X509_CERT_AUX_free(ret->aux);
        ASN1_OCTET_STRING_free(ret->skid);
        AUTHORITY_KEYID_free(ret->akid);
        CRL_DIST_POINTS_free(ret->crldp);
        policy_cache_free(ret->policy_cache);
        GENERAL_NAMES_free(ret->altname);
        NAME_CONSTRAINTS_free(ret->nc);

        sk_IPAddressFamily_pop_free(ret->rfc3779_addr, IPAddressFamily_free);
        ASIdentifiers_free(ret->rfc3779_asid);


        ASN1_OCTET_STRING_free(ret->sm2_id);




    case 128:
        ret->ex_cached = 0;
        ret->ex_kusage = 0;
        ret->ex_xkusage = 0;
        ret->ex_nscert = 0;
        ret->ex_flags = 0;
        ret->ex_pathlen = -1;
        ret->ex_pcpathlen = -1;
        ret->skid = ((void*)0);
        ret->akid = ((void*)0);
        ret->policy_cache = ((void*)0);
        ret->altname = ((void*)0);
        ret->nc = ((void*)0);

        ret->rfc3779_addr = ((void*)0);
        ret->rfc3779_asid = ((void*)0);


        ret->sm2_id = ((void*)0);

        ret->aux = ((void*)0);
        ret->crldp = ((void*)0);
        if (!CRYPTO_new_ex_data(CRYPTO_EX_INDEX_X509, ret, &ret->ex_data))
            return 0;
        break;

    case 129:
        CRYPTO_free_ex_data(CRYPTO_EX_INDEX_X509, ret, &ret->ex_data);
        X509_CERT_AUX_free(ret->aux);
        ASN1_OCTET_STRING_free(ret->skid);
        AUTHORITY_KEYID_free(ret->akid);
        CRL_DIST_POINTS_free(ret->crldp);
        policy_cache_free(ret->policy_cache);
        GENERAL_NAMES_free(ret->altname);
        NAME_CONSTRAINTS_free(ret->nc);

        sk_IPAddressFamily_pop_free(ret->rfc3779_addr, IPAddressFamily_free);
        ASIdentifiers_free(ret->rfc3779_asid);


        ASN1_OCTET_STRING_free(ret->sm2_id);

        break;

    }

    return 1;

}
