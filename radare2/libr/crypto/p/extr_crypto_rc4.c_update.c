
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RCrypto ;


 int * calloc (int,int) ;
 int free (int *) ;
 int r_crypto_append (int *,int *,int) ;
 int rc4_crypt (int *,int const*,int *,int) ;
 int st ;

__attribute__((used)) static bool update(RCrypto *cry, const ut8 *buf, int len) {
 ut8 *obuf = calloc (1, len);
 if (!obuf) {
  return 0;
 }
 rc4_crypt (&st, buf, obuf, len);
 r_crypto_append (cry, obuf, len);
 free (obuf);
 return 0;
}
