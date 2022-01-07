
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DH ;
typedef int BIGNUM ;


 scalar_t__ BN_bn2binpad (int const*,unsigned char*,int) ;
 int BN_num_bytes (int const*) ;
 int DH_F_DH_KEY2BUF ;
 int DH_R_BN_ERROR ;
 int DH_R_INVALID_PUBKEY ;
 int DH_get0_key (int const*,int const**,int *) ;
 int DH_get0_pqg (int const*,int const**,int *,int *) ;
 int DHerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (int) ;

size_t dh_key2buf(const DH *dh, unsigned char **pbuf_out)
{
    const BIGNUM *pubkey;
    unsigned char *pbuf;
    const BIGNUM *p;
    int p_size;

    DH_get0_pqg(dh, &p, ((void*)0), ((void*)0));
    DH_get0_key(dh, &pubkey, ((void*)0));
    if (p == ((void*)0) || pubkey == ((void*)0)
            || (p_size = BN_num_bytes(p)) == 0
            || BN_num_bytes(pubkey) == 0) {
        DHerr(DH_F_DH_KEY2BUF, DH_R_INVALID_PUBKEY);
        return 0;
    }
    if ((pbuf = OPENSSL_malloc(p_size)) == ((void*)0)) {
        DHerr(DH_F_DH_KEY2BUF, ERR_R_MALLOC_FAILURE);
        return 0;
    }




    if (BN_bn2binpad(pubkey, pbuf, p_size) < 0) {
        OPENSSL_free(pbuf);
        DHerr(DH_F_DH_KEY2BUF, DH_R_BN_ERROR);
        return 0;
    }
    *pbuf_out = pbuf;
    return p_size;
}
