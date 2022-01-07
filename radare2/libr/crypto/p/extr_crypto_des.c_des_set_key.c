
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut32 ;
struct TYPE_5__ {int key_size; int rounds; int * keyhi; int * keylo; } ;
struct TYPE_4__ {int dir; } ;
typedef TYPE_1__ RCrypto ;


 int DES_KEY_SIZE ;
 int be32 (int const*) ;
 int r_des_permute_key (int*,int*) ;
 int r_des_round_key (int,int *,int *,int*,int*) ;
 TYPE_2__ st ;

__attribute__((used)) static bool des_set_key (RCrypto *cry, const ut8 *key, int keylen, int mode, int direction) {
 ut32 keylo, keyhi, i;
 if (keylen != DES_KEY_SIZE) {
  return 0;
 }

 keylo = be32 (key);
 keyhi = be32 (key + 4);

 st.key_size = DES_KEY_SIZE;
 st.rounds = 16;
 cry->dir = direction;

 r_des_permute_key (&keylo, &keyhi);

 for (i = 0; i < 16; ++i) {

  r_des_round_key (i, &st.keylo[i], &st.keyhi[i], &keylo, &keyhi);
 }

 return 1;
}
