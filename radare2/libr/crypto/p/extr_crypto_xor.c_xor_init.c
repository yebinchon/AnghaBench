
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
struct xor_state {int key_size; int key; } ;


 int malloc (int) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static bool xor_init(struct xor_state *const state, const ut8 *key, int keylen) {
 if (!state || !key || keylen < 1) {
  return 0;
 }
 state->key_size = keylen;
 state->key = malloc (keylen);
 memcpy (state->key, key, keylen);
 return 1;
}
