
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
struct xor_state {int const* key; int key_size; } ;



__attribute__((used)) static void xor_crypt(struct xor_state *const state, const ut8 *inbuf, ut8 *outbuf, int buflen) {
 int i;
 for (i = 0; i < buflen; i++) {
  outbuf[i] = inbuf[i] ^ state->key[(i%state->key_size)];
 }
}
