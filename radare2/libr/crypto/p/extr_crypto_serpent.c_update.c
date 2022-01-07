
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut32 ;
struct TYPE_4__ {scalar_t__ dir; } ;
typedef TYPE_1__ RCrypto ;


 int BLOCK_SIZE ;
 int* calloc (int,int const) ;
 int free (int* const) ;
 int r_crypto_append (TYPE_1__*,int* const,int const) ;
 int r_read_le32 (int const*) ;
 int serpent_decrypt (int *,int* const,int* const) ;
 int serpent_encrypt (int *,int* const,int* const) ;
 int st ;

__attribute__((used)) static bool update(RCrypto *cry, const ut8 *buf, int len) {

 const int diff = (BLOCK_SIZE - (len % BLOCK_SIZE)) % BLOCK_SIZE;
 const int size = len + diff;
 const int blocks = size / BLOCK_SIZE;
 int i, j;

 ut8 *const obuf = calloc (4, size/4);
 if (!obuf) {
  return 0;
 }
 ut32 *const ibuf = calloc (4, size/4);
 if (!ibuf) {
  free (obuf);
  return 0;
 }
 ut32 *const tmp = calloc (4, size/4);
 if (!ibuf) {
  free (obuf);
  free (ibuf);
  return 0;
 }


 for (j = 0; j < size/4; j++) {
  ibuf[j] = r_read_le32(&buf[4*j]);
 }



 if (cry->dir == 0) {
  for (i = 0; i < blocks; i++) {

   const int delta = (BLOCK_SIZE * i)/4;
   serpent_encrypt (&st, ibuf + delta, tmp + delta);
  }
 } else if (cry->dir > 0) {
  for (i = 0; i < blocks; i++) {

   const int delta = (BLOCK_SIZE * i)/4;
   serpent_decrypt (&st, ibuf + delta, tmp + delta);
  }
 }


 int k;
 for (j = 0; j < size/4; j++) {
  k = 4*j;
  obuf[k] = tmp[j] & 0xff;
  obuf[k+1] = (tmp[j] >> 8) & 0xff;
  obuf[k+2] = (tmp[j] >> 16) & 0xff;
  obuf[k+3] = (tmp[j] >> 24) & 0xff;
 }

 r_crypto_append (cry, obuf, size);
 free (obuf);
 free (ibuf);
 free (tmp);
 return 1;
}
