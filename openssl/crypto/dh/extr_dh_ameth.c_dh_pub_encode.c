
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int X509_PUBKEY ;
struct TYPE_16__ {scalar_t__ length; int data; } ;
struct TYPE_15__ {int pub_key; } ;
struct TYPE_12__ {TYPE_4__* dh; } ;
struct TYPE_14__ {TYPE_2__* ameth; TYPE_1__ pkey; } ;
struct TYPE_13__ {int pkey_id; } ;
typedef TYPE_3__ EVP_PKEY ;
typedef TYPE_4__ DH ;
typedef TYPE_5__ ASN1_STRING ;
typedef int ASN1_INTEGER ;


 int ASN1_INTEGER_free (int *) ;
 int ASN1_STRING_free (TYPE_5__*) ;
 TYPE_5__* ASN1_STRING_new () ;
 int * BN_to_ASN1_INTEGER (int ,int *) ;
 int DH_F_DH_PUB_ENCODE ;
 int DHerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OBJ_nid2obj (int ) ;
 int OPENSSL_free (unsigned char*) ;
 int V_ASN1_SEQUENCE ;
 scalar_t__ X509_PUBKEY_set0_param (int *,int ,int,TYPE_5__*,unsigned char*,int) ;
 int i2d_ASN1_INTEGER (int *,unsigned char**) ;
 scalar_t__ i2d_dhp (TYPE_3__ const*,TYPE_4__*,int *) ;

__attribute__((used)) static int dh_pub_encode(X509_PUBKEY *pk, const EVP_PKEY *pkey)
{
    DH *dh;
    int ptype;
    unsigned char *penc = ((void*)0);
    int penclen;
    ASN1_STRING *str;
    ASN1_INTEGER *pub_key = ((void*)0);

    dh = pkey->pkey.dh;

    str = ASN1_STRING_new();
    if (str == ((void*)0)) {
        DHerr(DH_F_DH_PUB_ENCODE, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    str->length = i2d_dhp(pkey, dh, &str->data);
    if (str->length <= 0) {
        DHerr(DH_F_DH_PUB_ENCODE, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    ptype = V_ASN1_SEQUENCE;

    pub_key = BN_to_ASN1_INTEGER(dh->pub_key, ((void*)0));
    if (pub_key == ((void*)0))
        goto err;

    penclen = i2d_ASN1_INTEGER(pub_key, &penc);

    ASN1_INTEGER_free(pub_key);

    if (penclen <= 0) {
        DHerr(DH_F_DH_PUB_ENCODE, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (X509_PUBKEY_set0_param(pk, OBJ_nid2obj(pkey->ameth->pkey_id),
                               ptype, str, penc, penclen))
        return 1;

 err:
    OPENSSL_free(penc);
    ASN1_STRING_free(str);

    return 0;
}
