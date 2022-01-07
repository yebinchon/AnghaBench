
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BN_BLINDING ;
typedef int BIGNUM ;


 int BN_BLINDING_convert_ex (int *,int *,int *,int *) ;
 int BN_BLINDING_lock (int *) ;
 int BN_BLINDING_unlock (int *) ;

__attribute__((used)) static int rsa_blinding_convert(BN_BLINDING *b, BIGNUM *f, BIGNUM *unblind,
                                BN_CTX *ctx)
{
    if (unblind == ((void*)0)) {



        return BN_BLINDING_convert_ex(f, ((void*)0), b, ctx);
    } else {



        int ret;

        BN_BLINDING_lock(b);
        ret = BN_BLINDING_convert_ex(f, unblind, b, ctx);
        BN_BLINDING_unlock(b);

        return ret;
    }
}
