
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DH ;
typedef int BIGNUM ;


 int * BN_bin2bn (unsigned char const*,size_t,int *) ;
 int BN_free (int *) ;
 scalar_t__ BN_is_zero (int *) ;
 size_t BN_num_bytes (int const*) ;
 int DH_F_DH_BUF2KEY ;
 int DH_R_BN_ERROR ;
 int DH_R_INVALID_PUBKEY ;
 int DH_R_NO_PARAMETERS_SET ;
 int DH_get0_pqg (int *,int const**,int *,int *) ;
 int DH_set0_key (int *,int *,int *) ;
 int DHerr (int ,int) ;

int dh_buf2key(DH *dh, const unsigned char *buf, size_t len)
{
    int err_reason = DH_R_BN_ERROR;
    BIGNUM *pubkey = ((void*)0);
    const BIGNUM *p;
    size_t p_size;

    if ((pubkey = BN_bin2bn(buf, len, ((void*)0))) == ((void*)0))
        goto err;
    DH_get0_pqg(dh, &p, ((void*)0), ((void*)0));
    if (p == ((void*)0) || (p_size = BN_num_bytes(p)) == 0) {
        err_reason = DH_R_NO_PARAMETERS_SET;
        goto err;
    }




    if (BN_is_zero(pubkey) || p_size != len) {
        err_reason = DH_R_INVALID_PUBKEY;
        goto err;
    }
    if (DH_set0_key(dh, pubkey, ((void*)0)) != 1)
        goto err;
    return 1;
err:
    DHerr(DH_F_DH_BUF2KEY, err_reason);
    BN_free(pubkey);
    return 0;
}
