
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut32 ;
struct TYPE_3__ {int dir; } ;
typedef TYPE_1__ RCrypto ;


 int * cps2key ;
 int r_read_be32 (int const*) ;

__attribute__((used)) static bool set_key(RCrypto *cry, const ut8 *key, int keylen, int mode, int direction) {
 cry->dir = direction;
 if (keylen == 8) {

  const ut32 *key32 = (const ut32*)key;
  cps2key[0] = r_read_be32 (key32);
  cps2key[1] = r_read_be32 (key32 + 1);
  return 1;
 }
 return 0;
}
