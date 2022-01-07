
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_KEY ;
typedef int ECDSA_SIG ;
typedef int BIGNUM ;


 int ECDSA_SIG_free (int *) ;
 int * ECDSA_do_sign_ex (unsigned char const*,int,int const*,int const*,int *) ;
 unsigned int i2d_ECDSA_SIG (int *,unsigned char**) ;

int ossl_ecdsa_sign(int type, const unsigned char *dgst, int dlen,
                    unsigned char *sig, unsigned int *siglen,
                    const BIGNUM *kinv, const BIGNUM *r, EC_KEY *eckey)
{
    ECDSA_SIG *s;

    s = ECDSA_do_sign_ex(dgst, dlen, kinv, r, eckey);
    if (s == ((void*)0)) {
        *siglen = 0;
        return 0;
    }
    *siglen = i2d_ECDSA_SIG(s, &sig);
    ECDSA_SIG_free(s);
    return 1;
}
