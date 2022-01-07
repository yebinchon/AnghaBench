
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int* cd64 ;

__attribute__((used)) static int sdb_b64_decode(const char in[4], ut8 out[3]) {
 int len = 3;
 ut8 i, v[4] = {0};
 for (i = 0; i < 4; i++) {
  if (in[i] < '+' || in[i] > 'z') {
   return -1;
  }
  v[i] = cd64[in[i] - '+'];
  if (v[i] == '$') {
   len = i ? i - 1: -1;
   break;
  }
  v[i] -= 62;
 }
 out[0] = v[0] << 2 | v[1] >> 4;
 out[1] = v[1] << 4 | v[2] >> 2;
 out[2] = ((v[2] << 6) & 0xc0) | v[3];
 return len;
}
