
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ut8 ;
struct rc4_state {int key_size; size_t* perm; scalar_t__ index2; scalar_t__ index1; } ;


 int swap_bytes (size_t const*,size_t const*) ;

__attribute__((used)) static bool rc4_init(struct rc4_state *const state, const ut8 *key, int keylen) {
 ut8 j;
 int i;

 if (!state || !key || keylen < 1) {
  return 0;
 }
 state->key_size = keylen;

 for (i = 0; i < 256; i++) {
  state->perm[i] = (ut8)i;
 }
 state->index1 = 0;
 state->index2 = 0;


 for (j = i = 0; i < 256; i++) {
  j += state->perm[i] + key[i % keylen];
  swap_bytes (&state->perm[i], &state->perm[j]);
 }
 return 1;
}
