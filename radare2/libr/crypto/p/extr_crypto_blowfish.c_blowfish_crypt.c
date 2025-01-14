
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;
struct blowfish_state {int* p; } ;


 int F (struct blowfish_state* const,int) ;
 int eprintf (char*,int) ;
 int swap (int*,int*) ;

__attribute__((used)) static void blowfish_crypt(struct blowfish_state *const state, const ut8 *inbuf, ut8 *outbuf, int buflen) {
 ut32 left, right;
 int index1, index2;

 if (!state || !inbuf || !outbuf || buflen < 0 || buflen%8 != 0) {

  if (buflen % 8 != 0) {
   eprintf ("Invalid input length %d. Expected length is multiple of 8 bytes.\n", buflen);
  }
  return;
 }

 for (index1 = 0; index1 < buflen; index1 += 8) {
  left = (inbuf[index1+0] << 24 | inbuf[index1+1] << 16 | inbuf[index1+2] << 8 | inbuf[index1+3]);
  right = (inbuf[index1+4] << 24 | inbuf[index1+5] << 16 | inbuf[index1+6] << 8 | inbuf[index1+7]);

  for (index2 = 0; index2 < 16; index2 += 1) {
   left ^= state->p[index2];
   right ^= F (state, left);
   swap (&left, &right);
  }

  swap (&left, &right);
  right ^= state->p[16];
  left ^= state->p[17];

  outbuf[index1+0] = left >> 24;
  outbuf[index1+1] = left >> 16;
  outbuf[index1+2] = left >> 8;
  outbuf[index1+3] = left;
  outbuf[index1+4] = right >> 24;
  outbuf[index1+5] = right >> 16;
  outbuf[index1+6] = right >> 8;
  outbuf[index1+7] = right;
 }
}
