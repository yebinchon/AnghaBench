
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RCrypto ;


 int st ;
 int xor_init (int *,int const*,int) ;

__attribute__((used)) static bool xor_set_key(RCrypto *cry, const ut8 *key, int keylen, int mode, int direction) {
 return xor_init (&st, key, keylen);
}
