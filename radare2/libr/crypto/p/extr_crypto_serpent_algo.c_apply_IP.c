
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int DW_BY_BLOCK ;
 int* IPTable ;
 scalar_t__ get_bit (int,int) ;

void apply_IP(ut32 in[DW_BY_BLOCK], ut32 out[DW_BY_BLOCK]) {
 int index;
 int i;
 for (i = 0; i < DW_BY_BLOCK*32; i++) {
  index = IPTable[i];
  out[i/32] ^= (-(ut32)get_bit (index%32, in[index/32]) ^ out[i/32])
   & (1 << i);
 }
}
