
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* rsa; } ;
struct TYPE_9__ {TYPE_2__* ameth; TYPE_1__ pkey; } ;
struct TYPE_8__ {int * pss; } ;
struct TYPE_7__ {scalar_t__ pkey_id; } ;
typedef TYPE_3__ RSA ;
typedef TYPE_4__ EVP_PKEY ;
typedef int ASN1_STRING ;


 int ASN1_ITEM_rptr (int ) ;
 int * ASN1_item_pack (int *,int ,int **) ;
 scalar_t__ EVP_PKEY_RSA_PSS ;
 int RSA_PSS_PARAMS ;
 int V_ASN1_NULL ;
 int V_ASN1_SEQUENCE ;
 int V_ASN1_UNDEF ;

__attribute__((used)) static int rsa_param_encode(const EVP_PKEY *pkey,
                            ASN1_STRING **pstr, int *pstrtype)
{
    const RSA *rsa = pkey->pkey.rsa;

    *pstr = ((void*)0);

    if (pkey->ameth->pkey_id != EVP_PKEY_RSA_PSS) {
        *pstrtype = V_ASN1_NULL;
        return 1;
    }

    if (rsa->pss == ((void*)0)) {
        *pstrtype = V_ASN1_UNDEF;
        return 1;
    }

    if (ASN1_item_pack(rsa->pss, ASN1_ITEM_rptr(RSA_PSS_PARAMS), pstr) == ((void*)0))
        return 0;

    *pstrtype = V_ASN1_SEQUENCE;
    return 1;
}
