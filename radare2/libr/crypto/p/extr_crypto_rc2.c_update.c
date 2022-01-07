
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RCrypto ;


 int * calloc (int,int) ;
 int flag ;
 int free (int *) ;
 int r_crypto_append (int *,int *,int) ;
 int rc2_crypt (int *,int const*,int *,int) ;
 int rc2_dcrypt (int *,int const*,int *,int) ;
 int state ;

__attribute__((used)) static bool update(RCrypto *cry, const ut8 *buf, int len) {
 ut8 *obuf = calloc (1, len);
 if (!obuf) {
  return 0;
 }
 if (flag == 0) {
  rc2_crypt (&state, buf, obuf, len);
 } else if (flag == 1) {
  rc2_dcrypt (&state, buf, obuf, len);
 }
 r_crypto_append(cry, obuf, len);
 free (obuf);
 return 1;
}
