
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_6__ {unsigned int klen; int iv; int key; } ;
struct TYPE_5__ {TYPE_2__* ptr; } ;
typedef TYPE_1__ PX_Cipher ;
typedef TYPE_2__ OSSLCipher ;


 int PXE_KEY_TOO_BIG ;
 int bf_check_supported_key_len () ;
 unsigned int gen_ossl_block_size (TYPE_1__*) ;
 int memcpy (int ,int const*,unsigned int) ;
 int memset (int ,int ,unsigned int) ;

__attribute__((used)) static int
bf_init(PX_Cipher *c, const uint8 *key, unsigned klen, const uint8 *iv)
{
 OSSLCipher *od = c->ptr;
 unsigned bs = gen_ossl_block_size(c);
 static int bf_is_strong = -1;







 if (bf_is_strong == -1)
  bf_is_strong = bf_check_supported_key_len();

 if (!bf_is_strong && klen > 16)
  return PXE_KEY_TOO_BIG;


 od->klen = klen;
 memcpy(od->key, key, klen);

 if (iv)
  memcpy(od->iv, iv, bs);
 else
  memset(od->iv, 0, bs);
 return 0;
}
