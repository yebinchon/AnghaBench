
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_5__ {int key_size; int rounds; int columns; int key; } ;
struct TYPE_4__ {int dir; } ;
typedef TYPE_1__ RCrypto ;


 int memcpy (int ,int const*,int) ;
 TYPE_2__ st ;

__attribute__((used)) static bool aes_set_key (RCrypto *cry, const ut8 *key, int keylen, int mode, int direction) {
 if (!(keylen == 128 / 8 || keylen == 192 / 8 || keylen == 256 / 8)) {
  return 0;
 }
 st.key_size = keylen;
 st.rounds = 6 + (int)(keylen / 4);
 st.columns = (int)(keylen / 4);
 memcpy (st.key, key, keylen);
 cry->dir = direction;
 return 1;
}
