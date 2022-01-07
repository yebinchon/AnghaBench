
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int X509_ALGOR ;
struct TYPE_8__ {int ec; } ;
struct TYPE_9__ {TYPE_1__ pkey; } ;
typedef int EVP_PKEY_CTX ;
typedef TYPE_2__ EVP_PKEY ;
typedef int EC_KEY ;
typedef int EC_GROUP ;
typedef int ASN1_OBJECT ;
typedef int ASN1_BIT_STRING ;


 unsigned char* ASN1_STRING_get0_data (int *) ;
 int ASN1_STRING_length (int *) ;
 int EC_KEY_free (int *) ;
 int * EC_KEY_get0_group (int ) ;
 int * EC_KEY_new () ;
 int EC_KEY_set_group (int *,int const*) ;
 TYPE_2__* EVP_PKEY_CTX_get0_pkey (int *) ;
 scalar_t__ EVP_PKEY_derive_set_peer (int *,TYPE_2__*) ;
 int EVP_PKEY_free (TYPE_2__*) ;
 TYPE_2__* EVP_PKEY_new () ;
 int EVP_PKEY_set1_EC_KEY (TYPE_2__*,int *) ;
 scalar_t__ NID_X9_62_id_ecPublicKey ;
 scalar_t__ OBJ_obj2nid (int const*) ;
 int V_ASN1_NULL ;
 int V_ASN1_UNDEF ;
 int X509_ALGOR_get0 (int const**,int*,void const**,int *) ;
 int * eckey_type2param (int,void const*) ;
 int o2i_ECPublicKey (int **,unsigned char const**,int) ;

__attribute__((used)) static int ecdh_cms_set_peerkey(EVP_PKEY_CTX *pctx,
                                X509_ALGOR *alg, ASN1_BIT_STRING *pubkey)
{
    const ASN1_OBJECT *aoid;
    int atype;
    const void *aval;
    int rv = 0;
    EVP_PKEY *pkpeer = ((void*)0);
    EC_KEY *ecpeer = ((void*)0);
    const unsigned char *p;
    int plen;
    X509_ALGOR_get0(&aoid, &atype, &aval, alg);
    if (OBJ_obj2nid(aoid) != NID_X9_62_id_ecPublicKey)
        goto err;

    if (atype == V_ASN1_UNDEF || atype == V_ASN1_NULL) {
        const EC_GROUP *grp;
        EVP_PKEY *pk;
        pk = EVP_PKEY_CTX_get0_pkey(pctx);
        if (pk == ((void*)0))
            goto err;
        grp = EC_KEY_get0_group(pk->pkey.ec);
        ecpeer = EC_KEY_new();
        if (ecpeer == ((void*)0))
            goto err;
        if (!EC_KEY_set_group(ecpeer, grp))
            goto err;
    } else {
        ecpeer = eckey_type2param(atype, aval);
        if (!ecpeer)
            goto err;
    }

    plen = ASN1_STRING_length(pubkey);
    p = ASN1_STRING_get0_data(pubkey);
    if (p == ((void*)0) || plen == 0)
        goto err;
    if (!o2i_ECPublicKey(&ecpeer, &p, plen))
        goto err;
    pkpeer = EVP_PKEY_new();
    if (pkpeer == ((void*)0))
        goto err;
    EVP_PKEY_set1_EC_KEY(pkpeer, ecpeer);
    if (EVP_PKEY_derive_set_peer(pctx, pkpeer) > 0)
        rv = 1;
 err:
    EC_KEY_free(ecpeer);
    EVP_PKEY_free(pkpeer);
    return rv;
}
