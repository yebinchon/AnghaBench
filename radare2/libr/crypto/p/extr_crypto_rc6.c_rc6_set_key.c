
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RCrypto ;


 int rc6_init (int *,int const*,int,int) ;
 int st ;

__attribute__((used)) static bool rc6_set_key(RCrypto *cry, const ut8 *key, int keylen, int mode, int direction) {
 return rc6_init (&st, key, keylen, direction);
}
