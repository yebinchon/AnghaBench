
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_4__ {int dir; } ;
typedef TYPE_1__ RCrypto ;


 int INSIZE ;
 int free (int *) ;
 int * malloc (int) ;
 int r_base91_decode (int *,char const*,int) ;
 int r_base91_encode (char*,int const*,int) ;
 int r_crypto_append (TYPE_1__*,int *,int) ;

__attribute__((used)) static bool update(RCrypto *cry, const ut8 *buf, int len) {
 int olen = INSIZE;
 if (!cry || !buf || len < 1) {
  return 0;
 }
 ut8 *obuf = malloc (olen);
 if (!obuf) {
  return 0;
 }
 if (cry->dir == 0) {
  olen = r_base91_encode ((char *)obuf, (const ut8 *)buf, len);
 } else if (cry->dir == 1) {
  olen = r_base91_decode (obuf, (const char *)buf, len);
 }
 r_crypto_append (cry, obuf, olen);
 free (obuf);
 return 1;
}
