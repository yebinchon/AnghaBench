
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DSA ;
typedef int BIGNUM ;


 int BN_num_bits (int const*) ;
 int DSA_get0_key (int *,int const**,int const**) ;
 int DSA_get0_pqg (int *,int const**,int const**,int const**) ;
 unsigned int MS_DSS1MAGIC ;
 unsigned int MS_DSS2MAGIC ;
 int PEM_F_CHECK_BITLEN_DSA ;
 int PEM_R_UNSUPPORTED_KEY_COMPONENTS ;
 int PEMerr (int ,int ) ;

__attribute__((used)) static int check_bitlen_dsa(DSA *dsa, int ispub, unsigned int *pmagic)
{
    int bitlen;
    const BIGNUM *p = ((void*)0), *q = ((void*)0), *g = ((void*)0);
    const BIGNUM *pub_key = ((void*)0), *priv_key = ((void*)0);

    DSA_get0_pqg(dsa, &p, &q, &g);
    DSA_get0_key(dsa, &pub_key, &priv_key);
    bitlen = BN_num_bits(p);
    if ((bitlen & 7) || (BN_num_bits(q) != 160)
        || (BN_num_bits(g) > bitlen))
        goto badkey;
    if (ispub) {
        if (BN_num_bits(pub_key) > bitlen)
            goto badkey;
        *pmagic = MS_DSS1MAGIC;
    } else {
        if (BN_num_bits(priv_key) > 160)
            goto badkey;
        *pmagic = MS_DSS2MAGIC;
    }

    return bitlen;
 badkey:
    PEMerr(PEM_F_CHECK_BITLEN_DSA, PEM_R_UNSUPPORTED_KEY_COMPONENTS);
    return 0;
}
