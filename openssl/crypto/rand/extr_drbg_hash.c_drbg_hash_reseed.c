
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int V; int C; } ;
struct TYPE_7__ {TYPE_2__ hash; } ;
struct TYPE_9__ {int seedlen; TYPE_1__ data; } ;
typedef TYPE_2__ RAND_DRBG_HASH ;
typedef TYPE_3__ RAND_DRBG ;


 int hash_df (TYPE_3__*,int ,int,int ,int ,unsigned char const*,size_t,unsigned char const*,size_t) ;
 int hash_df1 (TYPE_3__*,int ,int,int ,int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int drbg_hash_reseed(RAND_DRBG *drbg,
                            const unsigned char *ent, size_t ent_len,
                            const unsigned char *adin, size_t adin_len)
{
    RAND_DRBG_HASH *hash = &drbg->data.hash;



    if (!hash_df(drbg, hash->C, 0x01, hash->V, drbg->seedlen, ent, ent_len,
                 adin, adin_len))
        return 0;
    memcpy(hash->V, hash->C, drbg->seedlen);

    return hash_df1(drbg, hash->C, 0x00, hash->V, drbg->seedlen);
}
