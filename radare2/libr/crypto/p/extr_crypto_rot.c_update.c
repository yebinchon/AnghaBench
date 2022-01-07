
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
 int rot_crypt (int ,int const*,int *,int) ;
 int rot_decrypt (int ,int const*,int *,int) ;
 int rot_key ;

__attribute__((used)) static bool update(RCrypto *cry, const ut8 *buf, int len) {
 ut8 *obuf = calloc (1, len);
 if (!obuf) {
  return 0;
 }
 if (flag == 0) {
  rot_crypt (rot_key, buf, obuf, len);
 } else if (flag == 1) {
  rot_decrypt (rot_key, buf, obuf, len);
 }
 r_crypto_append (cry, obuf, len);
 free (obuf);
 return 1;
}
