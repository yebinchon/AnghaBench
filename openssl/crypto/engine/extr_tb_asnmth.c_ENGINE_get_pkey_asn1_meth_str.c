
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int (* pkey_asn1_meths ) (TYPE_2__*,TYPE_1__ const**,int const**,int const) ;} ;
struct TYPE_9__ {char const* pem_str; } ;
typedef TYPE_1__ const EVP_PKEY_ASN1_METHOD ;
typedef TYPE_2__ ENGINE ;


 int strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,int) ;
 int stub1 (TYPE_2__*,TYPE_1__ const**,int const**,int const) ;
 int stub2 (TYPE_2__*,TYPE_1__ const**,int const**,int const) ;

const EVP_PKEY_ASN1_METHOD *ENGINE_get_pkey_asn1_meth_str(ENGINE *e,
                                                          const char *str,
                                                          int len)
{
    int i, nidcount;
    const int *nids;
    EVP_PKEY_ASN1_METHOD *ameth;
    if (!e->pkey_asn1_meths)
        return ((void*)0);
    if (len == -1)
        len = strlen(str);
    nidcount = e->pkey_asn1_meths(e, ((void*)0), &nids, 0);
    for (i = 0; i < nidcount; i++) {
        e->pkey_asn1_meths(e, &ameth, ((void*)0), nids[i]);
        if (((int)strlen(ameth->pem_str) == len)
            && strncasecmp(ameth->pem_str, str, len) == 0)
            return ameth;
    }
    return ((void*)0);
}
