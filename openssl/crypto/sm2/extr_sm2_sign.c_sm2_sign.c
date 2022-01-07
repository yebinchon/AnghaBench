
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_KEY ;
typedef int ECDSA_SIG ;
typedef int BIGNUM ;


 int * BN_bin2bn (unsigned char const*,int,int *) ;
 int BN_free (int *) ;
 int ECDSA_SIG_free (int *) ;
 int ERR_R_BN_LIB ;
 int ERR_R_INTERNAL_ERROR ;
 int SM2_F_SM2_SIGN ;
 int SM2err (int ,int ) ;
 int i2d_ECDSA_SIG (int *,unsigned char**) ;
 int * sm2_sig_gen (int *,int *) ;

int sm2_sign(const unsigned char *dgst, int dgstlen,
             unsigned char *sig, unsigned int *siglen, EC_KEY *eckey)
{
    BIGNUM *e = ((void*)0);
    ECDSA_SIG *s = ((void*)0);
    int sigleni;
    int ret = -1;

    e = BN_bin2bn(dgst, dgstlen, ((void*)0));
    if (e == ((void*)0)) {
       SM2err(SM2_F_SM2_SIGN, ERR_R_BN_LIB);
       goto done;
    }

    s = sm2_sig_gen(eckey, e);

    sigleni = i2d_ECDSA_SIG(s, &sig);
    if (sigleni < 0) {
       SM2err(SM2_F_SM2_SIGN, ERR_R_INTERNAL_ERROR);
       goto done;
    }
    *siglen = (unsigned int)sigleni;

    ret = 1;

 done:
    ECDSA_SIG_free(s);
    BN_free(e);
    return ret;
}
