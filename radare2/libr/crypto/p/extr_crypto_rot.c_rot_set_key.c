
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RCrypto ;


 int flag ;
 int rot_init (int *,int const*,int) ;
 int rot_key ;

__attribute__((used)) static bool rot_set_key(RCrypto *cry, const ut8 *key, int keylen, int mode, int direction) {
 flag = direction;
 return rot_init (&rot_key, key, keylen);
}
