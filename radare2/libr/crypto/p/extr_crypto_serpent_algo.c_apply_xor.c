
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int DW_BY_BLOCK ;

void apply_xor(ut32 block[DW_BY_BLOCK], ut32 subkey[DW_BY_BLOCK]) {
 int i;
 for (i = 0; i < DW_BY_BLOCK; i++) {
  block[i] ^= subkey[i];
 }
}
