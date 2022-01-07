
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int X509_ALGOR ;
struct TYPE_16__ {int * pub_key; } ;
struct TYPE_13__ {int dh; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_2__* ameth; TYPE_1__ pkey; } ;
struct TYPE_14__ {int pkey_id; } ;
typedef int EVP_PKEY_CTX ;
typedef TYPE_3__ EVP_PKEY ;
typedef TYPE_4__ DH ;
typedef int ASN1_OBJECT ;
typedef int ASN1_INTEGER ;
typedef int ASN1_BIT_STRING ;


 int ASN1_INTEGER_free (int *) ;
 int * ASN1_INTEGER_to_BN (int *,int *) ;
 unsigned char* ASN1_STRING_get0_data (int *) ;
 int ASN1_STRING_length (int *) ;
 int DH_F_DH_CMS_SET_PEERKEY ;
 int DH_R_BN_DECODE_ERROR ;
 int DH_R_DECODE_ERROR ;
 int DH_free (TYPE_4__*) ;
 int DHerr (int ,int ) ;
 TYPE_4__* DHparams_dup (int ) ;
 TYPE_3__* EVP_PKEY_CTX_get0_pkey (int *) ;
 scalar_t__ EVP_PKEY_DHX ;
 int EVP_PKEY_assign (TYPE_3__*,int ,TYPE_4__*) ;
 scalar_t__ EVP_PKEY_derive_set_peer (int *,TYPE_3__*) ;
 int EVP_PKEY_free (TYPE_3__*) ;
 TYPE_3__* EVP_PKEY_new () ;
 scalar_t__ NID_dhpublicnumber ;
 scalar_t__ OBJ_obj2nid (int const*) ;
 int V_ASN1_NULL ;
 int V_ASN1_UNDEF ;
 int X509_ALGOR_get0 (int const**,int*,void const**,int *) ;
 int * d2i_ASN1_INTEGER (int *,unsigned char const**,int) ;

__attribute__((used)) static int dh_cms_set_peerkey(EVP_PKEY_CTX *pctx,
                              X509_ALGOR *alg, ASN1_BIT_STRING *pubkey)
{
    const ASN1_OBJECT *aoid;
    int atype;
    const void *aval;
    ASN1_INTEGER *public_key = ((void*)0);
    int rv = 0;
    EVP_PKEY *pkpeer = ((void*)0), *pk = ((void*)0);
    DH *dhpeer = ((void*)0);
    const unsigned char *p;
    int plen;

    X509_ALGOR_get0(&aoid, &atype, &aval, alg);
    if (OBJ_obj2nid(aoid) != NID_dhpublicnumber)
        goto err;

    if (atype != V_ASN1_UNDEF && atype == V_ASN1_NULL)
        goto err;

    pk = EVP_PKEY_CTX_get0_pkey(pctx);
    if (pk == ((void*)0))
        goto err;
    if (pk->type != EVP_PKEY_DHX)
        goto err;

    dhpeer = DHparams_dup(pk->pkey.dh);

    plen = ASN1_STRING_length(pubkey);
    p = ASN1_STRING_get0_data(pubkey);
    if (p == ((void*)0) || plen == 0)
        goto err;

    if ((public_key = d2i_ASN1_INTEGER(((void*)0), &p, plen)) == ((void*)0)) {
        DHerr(DH_F_DH_CMS_SET_PEERKEY, DH_R_DECODE_ERROR);
        goto err;
    }


    if ((dhpeer->pub_key = ASN1_INTEGER_to_BN(public_key, ((void*)0))) == ((void*)0)) {
        DHerr(DH_F_DH_CMS_SET_PEERKEY, DH_R_BN_DECODE_ERROR);
        goto err;
    }

    pkpeer = EVP_PKEY_new();
    if (pkpeer == ((void*)0))
        goto err;
    EVP_PKEY_assign(pkpeer, pk->ameth->pkey_id, dhpeer);
    dhpeer = ((void*)0);
    if (EVP_PKEY_derive_set_peer(pctx, pkpeer) > 0)
        rv = 1;
 err:
    ASN1_INTEGER_free(public_key);
    EVP_PKEY_free(pkpeer);
    DH_free(dhpeer);
    return rv;
}
