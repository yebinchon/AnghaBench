
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA ;
typedef int BN_GENCB ;
typedef int BIGNUM ;


 int BN_GENCB_free (int *) ;
 int * BN_GENCB_new () ;
 int BN_GENCB_set_old (int *,void (*) (int,int,void*),void*) ;
 int BN_free (int *) ;
 int * BN_new () ;
 scalar_t__ BN_set_bit (int *,int) ;
 int RSA_free (int *) ;
 scalar_t__ RSA_generate_key_ex (int *,int,int *,int *) ;
 int * RSA_new () ;

RSA *RSA_generate_key(int bits, unsigned long e_value,
                      void (*callback) (int, int, void *), void *cb_arg)
{
    int i;
    BN_GENCB *cb = BN_GENCB_new();
    RSA *rsa = RSA_new();
    BIGNUM *e = BN_new();

    if (cb == ((void*)0) || rsa == ((void*)0) || e == ((void*)0))
        goto err;





    for (i = 0; i < (int)sizeof(unsigned long) * 8; i++) {
        if (e_value & (1UL << i))
            if (BN_set_bit(e, i) == 0)
                goto err;
    }

    BN_GENCB_set_old(cb, callback, cb_arg);

    if (RSA_generate_key_ex(rsa, bits, e, cb)) {
        BN_free(e);
        BN_GENCB_free(cb);
        return rsa;
    }
 err:
    BN_free(e);
    RSA_free(rsa);
    BN_GENCB_free(cb);
    return 0;
}
