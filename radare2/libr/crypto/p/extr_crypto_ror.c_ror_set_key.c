
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RCrypto ;


 int flag ;
 int ror_init (int *,int const*,int) ;
 int st ;

__attribute__((used)) static bool ror_set_key(RCrypto *cry, const ut8 *key, int keylen, int mode, int direction) {
 flag = direction;
 return ror_init (&st, key, keylen);
}
