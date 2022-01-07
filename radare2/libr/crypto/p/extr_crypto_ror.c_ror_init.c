
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
struct ror_state {int key_size; int * key; } ;


 int MAX_ror_KEY_SIZE ;

__attribute__((used)) static bool ror_init(struct ror_state *const state, const ut8 *key, int keylen) {
 if (!state || !key || keylen < 1 || keylen > MAX_ror_KEY_SIZE) {
  return 0;
 }
 int i;
 state->key_size = keylen;
 for (i = 0; i < keylen; i++) {
  state->key[i] = key[i];
 }
 return 1;
}
