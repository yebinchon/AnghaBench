
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_4__ {int dir; } ;
typedef TYPE_1__ RCrypto ;


 int blowfish_crypt (int *,int const*,int *,int) ;
 int blowfish_decrypt (int *,int const*,int *,int) ;
 int * calloc (int,int) ;
 int free (int *) ;
 int r_crypto_append (TYPE_1__*,int *,int) ;
 int st ;

__attribute__((used)) static bool update(RCrypto *cry, const ut8 *buf, int len) {
 if (!cry || !buf) {
  return 0;
 }
 ut8 *obuf = calloc (1, len);
 if (!obuf) {
  return 0;
 }
 if (cry->dir == 0) {
  blowfish_crypt (&st, buf, obuf, len);
 } else if (cry->dir == 1) {
  blowfish_decrypt (&st, buf, obuf, len);
 }
 r_crypto_append (cry, obuf, len);
 free (obuf);
 return 1;
}
