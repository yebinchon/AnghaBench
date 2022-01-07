
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509_PUBKEY ;
struct TYPE_4__ {int * ec; } ;
struct TYPE_5__ {TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef int EC_KEY ;


 int ASN1_OBJECT_free (void*) ;
 int ASN1_STRING_free (void*) ;
 int EC_F_ECKEY_PUB_ENCODE ;
 int ECerr (int ,int ) ;
 int ERR_R_EC_LIB ;
 int EVP_PKEY_EC ;
 int OBJ_nid2obj (int ) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (int) ;
 int V_ASN1_OBJECT ;
 scalar_t__ X509_PUBKEY_set0_param (int *,int ,int,void*,unsigned char*,int) ;
 int eckey_param2type (int*,void**,int *) ;
 int i2o_ECPublicKey (int *,unsigned char**) ;

__attribute__((used)) static int eckey_pub_encode(X509_PUBKEY *pk, const EVP_PKEY *pkey)
{
    EC_KEY *ec_key = pkey->pkey.ec;
    void *pval = ((void*)0);
    int ptype;
    unsigned char *penc = ((void*)0), *p;
    int penclen;

    if (!eckey_param2type(&ptype, &pval, ec_key)) {
        ECerr(EC_F_ECKEY_PUB_ENCODE, ERR_R_EC_LIB);
        return 0;
    }
    penclen = i2o_ECPublicKey(ec_key, ((void*)0));
    if (penclen <= 0)
        goto err;
    penc = OPENSSL_malloc(penclen);
    if (penc == ((void*)0))
        goto err;
    p = penc;
    penclen = i2o_ECPublicKey(ec_key, &p);
    if (penclen <= 0)
        goto err;
    if (X509_PUBKEY_set0_param(pk, OBJ_nid2obj(EVP_PKEY_EC),
                               ptype, pval, penc, penclen))
        return 1;
 err:
    if (ptype == V_ASN1_OBJECT)
        ASN1_OBJECT_free(pval);
    else
        ASN1_STRING_free(pval);
    OPENSSL_free(penc);
    return 0;
}
