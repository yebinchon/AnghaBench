
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_4__ {scalar_t__ dir; } ;
typedef TYPE_1__ RCrypto ;


 int BLOCK_SIZE ;
 int aes_decrypt (int *,int* const,int* const) ;
 int aes_encrypt (int *,int* const,int* const) ;
 int* calloc (int,int const) ;
 int free (int* const) ;
 int memcpy (int* const,int const*,int) ;
 int memset (int* const,int ,int const) ;
 int r_crypto_append (TYPE_1__*,int* const,int const) ;
 int st ;

__attribute__((used)) static bool update (RCrypto *cry, const ut8 *buf, int len) {

 const int diff = (BLOCK_SIZE - (len % BLOCK_SIZE)) % BLOCK_SIZE;
 const int size = len + diff;
 const int blocks = size / BLOCK_SIZE;
 int i;

 ut8 *const obuf = calloc (1, size);
 if (!obuf) {
  return 0;
 }
 ut8 *const ibuf = calloc (1, size);
 if (!ibuf) {
  free (obuf);
  return 0;
 }

 memset (ibuf, 0, size);
 memcpy (ibuf, buf, len);

 if (diff) {
  ibuf[len] = 8;
 }

 if (cry->dir == 0) {
  for (i = 0; i < blocks; i++) {
   const int delta = BLOCK_SIZE * i;
   aes_encrypt (&st, ibuf + delta, obuf + delta);
  }
 } else if (cry->dir > 0) {
  for (i = 0; i < blocks; i++) {
   const int delta = BLOCK_SIZE * i;
   aes_decrypt (&st, ibuf + delta, obuf + delta);
  }
 }



 r_crypto_append (cry, obuf, size);
 free (obuf);
 free (ibuf);
 return 1;
}
