
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAND_DRBG ;


 int drbg_hmac_update (int *,unsigned char const*,size_t,unsigned char const*,size_t,int *,int ) ;

__attribute__((used)) static int drbg_hmac_reseed(RAND_DRBG *drbg,
                            const unsigned char *ent, size_t ent_len,
                            const unsigned char *adin, size_t adin_len)
{

    return drbg_hmac_update(drbg, ent, ent_len, adin, adin_len, ((void*)0), 0);
}
