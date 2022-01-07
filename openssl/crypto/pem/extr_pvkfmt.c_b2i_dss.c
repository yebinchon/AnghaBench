
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int DSA ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_FLG_CONSTTIME ;
 int BN_free (int *) ;
 int BN_mod_exp (int *,int *,int *,int *,int *) ;
 int * BN_new () ;
 int BN_set_flags (int *,int ) ;
 int DSA_free (int *) ;
 int * DSA_new () ;
 int DSA_set0_key (int *,int *,int *) ;
 int DSA_set0_pqg (int *,int *,int *,int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new () ;
 int EVP_PKEY_set1_DSA (int *,int *) ;
 int PEM_F_B2I_DSS ;
 int PEMerr (int ,int ) ;
 int read_lebn (unsigned char const**,int,int **) ;

__attribute__((used)) static EVP_PKEY *b2i_dss(const unsigned char **in,
                         unsigned int bitlen, int ispub)
{
    const unsigned char *p = *in;
    EVP_PKEY *ret = ((void*)0);
    DSA *dsa = ((void*)0);
    BN_CTX *ctx = ((void*)0);
    unsigned int nbyte;
    BIGNUM *pbn = ((void*)0), *qbn = ((void*)0), *gbn = ((void*)0), *priv_key = ((void*)0);
    BIGNUM *pub_key = ((void*)0);

    nbyte = (bitlen + 7) >> 3;

    dsa = DSA_new();
    ret = EVP_PKEY_new();
    if (dsa == ((void*)0) || ret == ((void*)0))
        goto memerr;
    if (!read_lebn(&p, nbyte, &pbn))
        goto memerr;

    if (!read_lebn(&p, 20, &qbn))
        goto memerr;

    if (!read_lebn(&p, nbyte, &gbn))
        goto memerr;

    if (ispub) {
        if (!read_lebn(&p, nbyte, &pub_key))
            goto memerr;
    } else {
        if (!read_lebn(&p, 20, &priv_key))
            goto memerr;


        BN_set_flags(priv_key, BN_FLG_CONSTTIME);


        pub_key = BN_new();
        if (pub_key == ((void*)0))
            goto memerr;
        if ((ctx = BN_CTX_new()) == ((void*)0))
            goto memerr;

        if (!BN_mod_exp(pub_key, gbn, priv_key, pbn, ctx))
            goto memerr;

        BN_CTX_free(ctx);
        ctx = ((void*)0);
    }
    if (!DSA_set0_pqg(dsa, pbn, qbn, gbn))
        goto memerr;
    pbn = qbn = gbn = ((void*)0);
    if (!DSA_set0_key(dsa, pub_key, priv_key))
        goto memerr;
    pub_key = priv_key = ((void*)0);

    if (!EVP_PKEY_set1_DSA(ret, dsa))
        goto memerr;
    DSA_free(dsa);
    *in = p;
    return ret;

 memerr:
    PEMerr(PEM_F_B2I_DSS, ERR_R_MALLOC_FAILURE);
    DSA_free(dsa);
    BN_free(pbn);
    BN_free(qbn);
    BN_free(gbn);
    BN_free(pub_key);
    BN_free(priv_key);
    EVP_PKEY_free(ret);
    BN_CTX_free(ctx);
    return ((void*)0);
}
