
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int digest ;
typedef int BIGNUM ;


 int * BN_bin2bn (unsigned char*,int,int *) ;
 scalar_t__ BN_bn2binpad (int const*,unsigned char*,int) ;
 int BN_num_bytes (int const*) ;
 scalar_t__ BN_ucmp (int const*,int const*) ;
 int EVP_Digest (unsigned char*,int,unsigned char*,int *,int ,int *) ;
 int EVP_sha1 () ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (int) ;
 int SHA_DIGEST_LENGTH ;

__attribute__((used)) static BIGNUM *srp_Calc_xy(const BIGNUM *x, const BIGNUM *y, const BIGNUM *N)
{
    unsigned char digest[SHA_DIGEST_LENGTH];
    unsigned char *tmp = ((void*)0);
    int numN = BN_num_bytes(N);
    BIGNUM *res = ((void*)0);

    if (x != N && BN_ucmp(x, N) >= 0)
        return ((void*)0);
    if (y != N && BN_ucmp(y, N) >= 0)
        return ((void*)0);
    if ((tmp = OPENSSL_malloc(numN * 2)) == ((void*)0))
        goto err;
    if (BN_bn2binpad(x, tmp, numN) < 0
        || BN_bn2binpad(y, tmp + numN, numN) < 0
        || !EVP_Digest(tmp, numN * 2, digest, ((void*)0), EVP_sha1(), ((void*)0)))
        goto err;
    res = BN_bin2bn(digest, sizeof(digest), ((void*)0));
 err:
    OPENSSL_free(tmp);
    return res;
}
