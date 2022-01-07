
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;



__attribute__((used)) static int rotate_nibble (const ut8 b, int dir) {
 if (dir > 0) {
  bool high = b >> 7;
  return (b << 1) | high;
 }
 bool lower = b & 1;
 return (b >> 1) | (lower << 7);
}
