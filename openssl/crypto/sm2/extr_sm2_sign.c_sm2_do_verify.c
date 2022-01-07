
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int EVP_MD ;
typedef int EC_KEY ;
typedef int ECDSA_SIG ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int * sm2_compute_msg_hash (int const*,int const*,int const*,size_t const,int const*,size_t) ;
 int sm2_sig_verify (int const*,int const*,int *) ;

int sm2_do_verify(const EC_KEY *key,
                  const EVP_MD *digest,
                  const ECDSA_SIG *sig,
                  const uint8_t *id,
                  const size_t id_len,
                  const uint8_t *msg, size_t msg_len)
{
    BIGNUM *e = ((void*)0);
    int ret = 0;

    e = sm2_compute_msg_hash(digest, key, id, id_len, msg, msg_len);
    if (e == ((void*)0)) {

        goto done;
    }

    ret = sm2_sig_verify(key, sig, e);

 done:
    BN_free(e);
    return ret;
}
