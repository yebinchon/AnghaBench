
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char ut8 ;
struct TYPE_4__ {int dir; } ;
typedef TYPE_1__ RCrypto ;


 int free (char*) ;
 char* malloc (int) ;
 int r_base64_decode (char*,char const*,int) ;
 int r_base64_encode (char*,char const*,int) ;
 int r_crypto_append (TYPE_1__*,char*,int) ;

__attribute__((used)) static bool update(RCrypto *cry, const ut8 *buf, int len) {
 int olen = 0;
 ut8 *obuf = ((void*)0);
 if (cry->dir == 0) {
  olen = ((len + 2) / 3 ) * 4;
  obuf = malloc (olen + 1);
  if (!obuf) {
   return 0;
  }
  r_base64_encode ((char *)obuf, (const ut8 *)buf, len);
 } else if (cry->dir == 1) {
  olen = 4 + ((len / 4) * 3);
  if (len > 0) {
   olen -= (buf[len-1] == '=') ? ((buf[len-2] == '=') ? 2 : 1) : 0;
  }
  obuf = malloc (olen + 4);
  if (!obuf) {
   return 0;
  }
  olen = r_base64_decode (obuf, (const char *)buf, len);
 }
 if (olen > 0) {
  r_crypto_append (cry, obuf, olen);
 }
 free (obuf);
 return 1;
}
