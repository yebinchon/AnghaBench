
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
struct rol_state {int* key; int key_size; } ;



__attribute__((used)) static void rol_crypt(struct rol_state *const state, const ut8 *inbuf, ut8 *outbuf, int buflen) {
 int i;
 for (i = 0; i < buflen; i++) {
  ut8 count = state->key[i % state->key_size] & 7;
  ut8 inByte = inbuf[i];
  outbuf[i] = (inByte << count) | (inByte >> ((8 - count) & 7));
 }
}
