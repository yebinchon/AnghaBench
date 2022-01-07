
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RCrypto ;


 int BLOCK_SIZE ;
 int * calloc (int,int) ;
 int eprintf (char*) ;
 scalar_t__ flag ;
 int free (int *) ;
 int r_crypto_append (int *,int *,int) ;
 int rc6_decrypt (int *,int const*,int *) ;
 int rc6_encrypt (int *,int const*,int *) ;
 int st ;

__attribute__((used)) static bool update(RCrypto *cry, const ut8 *buf, int len) {
 if (len % BLOCK_SIZE != 0) {
  eprintf ("Input should be multiple of 128bit.\n");
  return 0;
 }

 const int blocks = len / BLOCK_SIZE;

 ut8 *obuf = calloc (1, len);
 if (!obuf) {
  return 0;
 }

 int i;
 if (flag) {
  for (i = 0; i < blocks; i++) {
   rc6_decrypt (&st, buf + BLOCK_SIZE * i, obuf + BLOCK_SIZE * i);
  }
 } else {
  for (i = 0; i < blocks; i++) {
   rc6_encrypt (&st, buf + BLOCK_SIZE * i, obuf + BLOCK_SIZE * i);
  }
 }

 r_crypto_append (cry, obuf, len);
 free (obuf);
 return 1;
}
