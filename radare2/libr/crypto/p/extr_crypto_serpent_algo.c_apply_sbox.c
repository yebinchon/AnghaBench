
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int** S ;

__attribute__((used)) static inline ut8 apply_sbox(int si, ut8 x) {
 x = S[si][x & 0xf];
 return x;
}
