
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * q; int * p; int g; } ;
typedef TYPE_1__ DH ;
typedef int BIGNUM ;


 int BN_cmp (int *,int *) ;
 int * BN_dup (int *) ;
 int BN_free (int *) ;
 int BN_get_word (int ) ;
 int BN_rshift1 (int *,int *) ;
 int NID_ffdhe2048 ;
 int NID_ffdhe3072 ;
 int NID_ffdhe4096 ;
 int NID_ffdhe6144 ;
 int NID_ffdhe8192 ;
 int NID_undef ;
 int _bignum_ffdhe2048_p ;
 int _bignum_ffdhe3072_p ;
 int _bignum_ffdhe4096_p ;
 int _bignum_ffdhe6144_p ;
 int _bignum_ffdhe8192_p ;

int DH_get_nid(const DH *dh)
{
    int nid;

    if (BN_get_word(dh->g) != 2)
        return NID_undef;
    if (!BN_cmp(dh->p, &_bignum_ffdhe2048_p))
        nid = NID_ffdhe2048;
    else if (!BN_cmp(dh->p, &_bignum_ffdhe3072_p))
        nid = NID_ffdhe3072;
    else if (!BN_cmp(dh->p, &_bignum_ffdhe4096_p))
        nid = NID_ffdhe4096;
    else if (!BN_cmp(dh->p, &_bignum_ffdhe6144_p))
        nid = NID_ffdhe6144;
    else if (!BN_cmp(dh->p, &_bignum_ffdhe8192_p))
        nid = NID_ffdhe8192;
    else
        return NID_undef;
    if (dh->q != ((void*)0)) {
        BIGNUM *q = BN_dup(dh->p);


        if (q == ((void*)0) || !BN_rshift1(q, q) || !BN_cmp(dh->q, q))
            nid = NID_undef;
        BN_free(q);
    }
    return nid;
}
