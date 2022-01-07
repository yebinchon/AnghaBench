
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int * cipher; } ;
typedef TYPE_1__ PX_Combo ;
typedef int PX_Cipher ;


 int memcpy (int *,int const*,unsigned int) ;
 int memset (int *,int ,unsigned int) ;
 int * px_alloc (unsigned int) ;
 int px_cipher_init (int *,int *,unsigned int,int *) ;
 unsigned int px_cipher_iv_size (int *) ;
 unsigned int px_cipher_key_size (int *) ;
 int px_free (int *) ;

__attribute__((used)) static int
combo_init(PX_Combo *cx, const uint8 *key, unsigned klen,
     const uint8 *iv, unsigned ivlen)
{
 int err;
 unsigned ks,
    ivs;
 PX_Cipher *c = cx->cipher;
 uint8 *ivbuf = ((void*)0);
 uint8 *keybuf;

 ks = px_cipher_key_size(c);

 ivs = px_cipher_iv_size(c);
 if (ivs > 0)
 {
  ivbuf = px_alloc(ivs);
  memset(ivbuf, 0, ivs);
  if (ivlen > ivs)
   memcpy(ivbuf, iv, ivs);
  else
   memcpy(ivbuf, iv, ivlen);
 }

 if (klen > ks)
  klen = ks;
 keybuf = px_alloc(ks);
 memset(keybuf, 0, ks);
 memcpy(keybuf, key, klen);

 err = px_cipher_init(c, keybuf, klen, ivbuf);

 if (ivbuf)
  px_free(ivbuf);
 px_free(keybuf);

 return err;
}
