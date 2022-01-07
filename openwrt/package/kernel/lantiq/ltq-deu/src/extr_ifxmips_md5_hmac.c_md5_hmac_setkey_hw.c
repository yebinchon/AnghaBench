
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct deu_hash_t {int KIDX; int KEY; } ;


 int CRTCL_SECT_END ;
 int CRTCL_SECT_START ;
 scalar_t__ HASH_START ;

__attribute__((used)) static int md5_hmac_setkey_hw(const u8 *key, unsigned int keylen)
{
    volatile struct deu_hash_t *hash = (struct deu_hash_t *) HASH_START;
    unsigned long flag;
    int i, j;
    u32 *in_key = (u32 *)key;



    CRTCL_SECT_START;
    j = 0;
    for (i = 0; i < keylen; i+=4)
    {
         hash->KIDX = j;
         asm("sync");
         hash->KEY = *((u32 *) in_key + j);
         asm("sync");
         j++;
    }
    CRTCL_SECT_END;

    return 0;
}
