
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int blocklen; int V; int K; } ;
struct TYPE_6__ {TYPE_2__ hmac; } ;
struct TYPE_8__ {TYPE_1__ data; } ;
typedef TYPE_2__ RAND_DRBG_HMAC ;
typedef TYPE_3__ RAND_DRBG ;


 int drbg_hmac_update (TYPE_3__*,unsigned char const*,size_t,unsigned char const*,size_t,unsigned char const*,size_t) ;
 int memset (int ,int,int ) ;

__attribute__((used)) static int drbg_hmac_instantiate(RAND_DRBG *drbg,
                                 const unsigned char *ent, size_t ent_len,
                                 const unsigned char *nonce, size_t nonce_len,
                                 const unsigned char *pstr, size_t pstr_len)
{
    RAND_DRBG_HMAC *hmac = &drbg->data.hmac;


    memset(hmac->K, 0x00, hmac->blocklen);

    memset(hmac->V, 0x01, hmac->blocklen);

    return drbg_hmac_update(drbg, ent, ent_len, nonce, nonce_len, pstr,
                            pstr_len);
}
