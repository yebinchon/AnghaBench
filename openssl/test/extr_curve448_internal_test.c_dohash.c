
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef int hashout ;
typedef int EVP_MD_CTX ;


 int EVP_DigestFinalXOF (int *,int const*,int) ;
 int EVP_DigestInit_ex (int *,int ,int *) ;
 int EVP_DigestUpdate (int *,int const*,size_t) ;
 int EVP_shake256 () ;

__attribute__((used)) static const uint8_t *dohash(EVP_MD_CTX *hashctx, const uint8_t *msg,
                             size_t msglen)
{
    static uint8_t hashout[64];

    if (!EVP_DigestInit_ex(hashctx, EVP_shake256(), ((void*)0))
            || !EVP_DigestUpdate(hashctx, msg, msglen)
            || !EVP_DigestFinalXOF(hashctx, hashout, sizeof(hashout)))
        return ((void*)0);

    return hashout;
}
