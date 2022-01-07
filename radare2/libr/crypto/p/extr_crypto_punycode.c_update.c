
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RCrypto ;


 scalar_t__ flag ;
 int free (char*) ;
 int r_crypto_append (int *,int *,int) ;
 char* r_punycode_decode (char const*,int,int*) ;
 char* r_punycode_encode (int const*,int,int*) ;

__attribute__((used)) static bool update(RCrypto *cry, const ut8 *buf, int len) {
 char *obuf;
 int olen;
 if (flag) {
  obuf = r_punycode_decode ((const char *)buf, len, &olen);
 } else {
  obuf = r_punycode_encode (buf, len, &olen);
 }
 r_crypto_append (cry, (ut8*)obuf, olen);
 free (obuf);
 return 1;
}
