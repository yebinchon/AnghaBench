
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int X509_PUBKEY ;
typedef int X509_ALGOR ;
struct TYPE_8__ {unsigned char* data; int length; } ;
struct TYPE_7__ {int dirty_cnt; int * pub_key; } ;
typedef int EVP_PKEY ;
typedef TYPE_1__ DSA ;
typedef TYPE_2__ ASN1_STRING ;
typedef int ASN1_INTEGER ;


 int ASN1_INTEGER_free (int *) ;
 int * ASN1_INTEGER_to_BN (int *,int *) ;
 int DSA_F_DSA_PUB_DECODE ;
 int DSA_R_BN_DECODE_ERROR ;
 int DSA_R_DECODE_ERROR ;
 int DSA_R_PARAMETER_ENCODING_ERROR ;
 int DSA_free (TYPE_1__*) ;
 TYPE_1__* DSA_new () ;
 int DSAerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_PKEY_assign_DSA (int *,TYPE_1__*) ;
 int V_ASN1_NULL ;
 int V_ASN1_SEQUENCE ;
 int V_ASN1_UNDEF ;
 int X509_ALGOR_get0 (int *,int*,void const**,int *) ;
 int X509_PUBKEY_get0_param (int *,unsigned char const**,int*,int **,int *) ;
 int * d2i_ASN1_INTEGER (int *,unsigned char const**,int) ;
 TYPE_1__* d2i_DSAparams (int *,unsigned char const**,int) ;

__attribute__((used)) static int dsa_pub_decode(EVP_PKEY *pkey, X509_PUBKEY *pubkey)
{
    const unsigned char *p, *pm;
    int pklen, pmlen;
    int ptype;
    const void *pval;
    const ASN1_STRING *pstr;
    X509_ALGOR *palg;
    ASN1_INTEGER *public_key = ((void*)0);

    DSA *dsa = ((void*)0);

    if (!X509_PUBKEY_get0_param(((void*)0), &p, &pklen, &palg, pubkey))
        return 0;
    X509_ALGOR_get0(((void*)0), &ptype, &pval, palg);

    if (ptype == V_ASN1_SEQUENCE) {
        pstr = pval;
        pm = pstr->data;
        pmlen = pstr->length;

        if ((dsa = d2i_DSAparams(((void*)0), &pm, pmlen)) == ((void*)0)) {
            DSAerr(DSA_F_DSA_PUB_DECODE, DSA_R_DECODE_ERROR);
            goto err;
        }

    } else if ((ptype == V_ASN1_NULL) || (ptype == V_ASN1_UNDEF)) {
        if ((dsa = DSA_new()) == ((void*)0)) {
            DSAerr(DSA_F_DSA_PUB_DECODE, ERR_R_MALLOC_FAILURE);
            goto err;
        }
    } else {
        DSAerr(DSA_F_DSA_PUB_DECODE, DSA_R_PARAMETER_ENCODING_ERROR);
        goto err;
    }

    if ((public_key = d2i_ASN1_INTEGER(((void*)0), &p, pklen)) == ((void*)0)) {
        DSAerr(DSA_F_DSA_PUB_DECODE, DSA_R_DECODE_ERROR);
        goto err;
    }

    if ((dsa->pub_key = ASN1_INTEGER_to_BN(public_key, ((void*)0))) == ((void*)0)) {
        DSAerr(DSA_F_DSA_PUB_DECODE, DSA_R_BN_DECODE_ERROR);
        goto err;
    }

    dsa->dirty_cnt++;
    ASN1_INTEGER_free(public_key);
    EVP_PKEY_assign_DSA(pkey, dsa);
    return 1;

 err:
    ASN1_INTEGER_free(public_key);
    DSA_free(dsa);
    return 0;

}
