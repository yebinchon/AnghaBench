
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int * BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_RAND_BOTTOM_ANY ;
 int BN_RAND_TOP_TWO ;
 int BN_num_bits (int *) ;
 int BN_priv_rand_ex (int *,int,int ,int ,int *) ;
 int BN_sub (int *,int *,int *) ;

int BN_X931_generate_Xpq(BIGNUM *Xp, BIGNUM *Xq, int nbits, BN_CTX *ctx)
{
    BIGNUM *t;
    int i;




    if ((nbits < 1024) || (nbits & 0xff))
        return 0;
    nbits >>= 1;





    if (!BN_priv_rand_ex(Xp, nbits, BN_RAND_TOP_TWO, BN_RAND_BOTTOM_ANY, ctx))
        goto err;

    BN_CTX_start(ctx);
    t = BN_CTX_get(ctx);
    if (t == ((void*)0))
        goto err;

    for (i = 0; i < 1000; i++) {
        if (!BN_priv_rand_ex(Xq, nbits, BN_RAND_TOP_TWO, BN_RAND_BOTTOM_ANY,
                             ctx))
            goto err;


        if (!BN_sub(t, Xp, Xq))
            goto err;
        if (BN_num_bits(t) > (nbits - 100))
            break;
    }

    BN_CTX_end(ctx);

    if (i < 1000)
        return 1;

    return 0;

 err:
    BN_CTX_end(ctx);
    return 0;
}
