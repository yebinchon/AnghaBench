
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * algorithm; } ;
typedef TYPE_1__ X509_ALGOR ;
struct TYPE_6__ {TYPE_1__* pkeyalg; int pkey; } ;
typedef TYPE_2__ PKCS8_PRIV_KEY_INFO ;
typedef int ASN1_OBJECT ;


 unsigned char* ASN1_STRING_get0_data (int ) ;
 int ASN1_STRING_length (int ) ;

int PKCS8_pkey_get0(const ASN1_OBJECT **ppkalg,
                    const unsigned char **pk, int *ppklen,
                    const X509_ALGOR **pa, const PKCS8_PRIV_KEY_INFO *p8)
{
    if (ppkalg)
        *ppkalg = p8->pkeyalg->algorithm;
    if (pk) {
        *pk = ASN1_STRING_get0_data(p8->pkey);
        *ppklen = ASN1_STRING_length(p8->pkey);
    }
    if (pa)
        *pa = p8->pkeyalg;
    return 1;
}
