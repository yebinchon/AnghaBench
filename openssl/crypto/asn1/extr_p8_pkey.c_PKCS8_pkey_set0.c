
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pkey; int pkeyalg; int version; } ;
typedef TYPE_1__ PKCS8_PRIV_KEY_INFO ;
typedef int ASN1_OBJECT ;


 int ASN1_INTEGER_set (int ,int) ;
 int ASN1_STRING_set0 (int ,unsigned char*,int) ;
 int X509_ALGOR_set0 (int ,int *,int,void*) ;

int PKCS8_pkey_set0(PKCS8_PRIV_KEY_INFO *priv, ASN1_OBJECT *aobj,
                    int version,
                    int ptype, void *pval, unsigned char *penc, int penclen)
{
    if (version >= 0) {
        if (!ASN1_INTEGER_set(priv->version, version))
            return 0;
    }
    if (!X509_ALGOR_set0(priv->pkeyalg, aobj, ptype, pval))
        return 0;
    if (penc)
        ASN1_STRING_set0(priv->pkey, penc, penclen);
    return 1;
}
