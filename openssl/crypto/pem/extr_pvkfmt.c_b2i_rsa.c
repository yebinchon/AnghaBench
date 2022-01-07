
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA ;
typedef int EVP_PKEY ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int * BN_new () ;
 int BN_set_word (int *,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new () ;
 int EVP_PKEY_set1_RSA (int *,int *) ;
 int PEM_F_B2I_RSA ;
 int PEMerr (int ,int ) ;
 int RSA_free (int *) ;
 int * RSA_new () ;
 int RSA_set0_crt_params (int *,int *,int *,int *) ;
 int RSA_set0_factors (int *,int *,int *) ;
 int RSA_set0_key (int *,int *,int *,int *) ;
 int read_lebn (unsigned char const**,unsigned int,int **) ;
 int read_ledword (unsigned char const**) ;

__attribute__((used)) static EVP_PKEY *b2i_rsa(const unsigned char **in,
                         unsigned int bitlen, int ispub)
{
    const unsigned char *pin = *in;
    EVP_PKEY *ret = ((void*)0);
    BIGNUM *e = ((void*)0), *n = ((void*)0), *d = ((void*)0);
    BIGNUM *p = ((void*)0), *q = ((void*)0), *dmp1 = ((void*)0), *dmq1 = ((void*)0), *iqmp = ((void*)0);
    RSA *rsa = ((void*)0);
    unsigned int nbyte, hnbyte;
    nbyte = (bitlen + 7) >> 3;
    hnbyte = (bitlen + 15) >> 4;
    rsa = RSA_new();
    ret = EVP_PKEY_new();
    if (rsa == ((void*)0) || ret == ((void*)0))
        goto memerr;
    e = BN_new();
    if (e == ((void*)0))
        goto memerr;
    if (!BN_set_word(e, read_ledword(&pin)))
        goto memerr;
    if (!read_lebn(&pin, nbyte, &n))
        goto memerr;
    if (!ispub) {
        if (!read_lebn(&pin, hnbyte, &p))
            goto memerr;
        if (!read_lebn(&pin, hnbyte, &q))
            goto memerr;
        if (!read_lebn(&pin, hnbyte, &dmp1))
            goto memerr;
        if (!read_lebn(&pin, hnbyte, &dmq1))
            goto memerr;
        if (!read_lebn(&pin, hnbyte, &iqmp))
            goto memerr;
        if (!read_lebn(&pin, nbyte, &d))
            goto memerr;
        if (!RSA_set0_factors(rsa, p, q))
            goto memerr;
        p = q = ((void*)0);
        if (!RSA_set0_crt_params(rsa, dmp1, dmq1, iqmp))
            goto memerr;
        dmp1 = dmq1 = iqmp = ((void*)0);
    }
    if (!RSA_set0_key(rsa, n, e, d))
        goto memerr;
    n = e = d = ((void*)0);

    if (!EVP_PKEY_set1_RSA(ret, rsa))
        goto memerr;
    RSA_free(rsa);
    *in = pin;
    return ret;
 memerr:
    PEMerr(PEM_F_B2I_RSA, ERR_R_MALLOC_FAILURE);
    BN_free(e);
    BN_free(n);
    BN_free(p);
    BN_free(q);
    BN_free(dmp1);
    BN_free(dmq1);
    BN_free(iqmp);
    BN_free(d);
    RSA_free(rsa);
    EVP_PKEY_free(ret);
    return ((void*)0);
}
