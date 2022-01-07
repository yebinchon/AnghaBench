
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x ;
typedef scalar_t__ uint64_t ;


 scalar_t__ SHA512_F0 (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ SHA512_F1 (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ SHA512_F2 (scalar_t__) ;
 scalar_t__ SHA512_F3 (scalar_t__) ;
 scalar_t__ SHA512_F4 (scalar_t__) ;
 scalar_t__ SHA512_F5 (scalar_t__) ;
 scalar_t__* SHA512_K ;
 int SHADecode64 (scalar_t__*,unsigned char const*,int) ;
 int ZEND_SECURE_ZERO (unsigned char*,int) ;

__attribute__((used)) static void SHA512Transform(uint64_t state[8], const unsigned char block[128])
{
 uint64_t a = state[0], b = state[1], c = state[2], d = state[3];
 uint64_t e = state[4], f = state[5], g = state[6], h = state[7];
 uint64_t x[16], T1, T2, W[80];
 int i;

 SHADecode64(x, block, 128);


 for(i = 0; i < 16; i++) {
  W[i] = x[i];
 }
 for(i = 16; i < 80; i++) {
  W[i] = SHA512_F5(W[i-2]) + W[i-7] + SHA512_F4(W[i-15]) + W[i-16];
 }

 for (i = 0; i < 80; i++) {
  T1 = h + SHA512_F3(e) + SHA512_F0(e,f,g) + SHA512_K[i] + W[i];
  T2 = SHA512_F2(a) + SHA512_F1(a,b,c);
  h = g; g = f; f = e; e = d + T1;
  d = c; c = b; b = a; a = T1 + T2;
 }

 state[0] += a;
 state[1] += b;
 state[2] += c;
 state[3] += d;
 state[4] += e;
 state[5] += f;
 state[6] += g;
 state[7] += h;


 ZEND_SECURE_ZERO((unsigned char*) x, sizeof(x));
}
