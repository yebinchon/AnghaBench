
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef scalar_t__ st32 ;


 scalar_t__ C55PLUS_DEBUG ;
 int has_failed ;
 int* ins_buff ;
 int ins_buff_len ;
 int printf (char*,int,int,int) ;

ut32 get_ins_part(ut32 pos, ut32 len) {
 ut32 ret = 0;
 has_failed = 0;
 if (C55PLUS_DEBUG) {
  printf ("pos => 0x%x len => %d ins_buff_len => %d\n", pos, len, ins_buff_len);
 }

 if ((st32)pos < 0 || pos >= ins_buff_len) {
  has_failed = 1;
  return ret;
 }

 for (; len > 0; --len) {
  ret <<= 8;
  if (pos >= ins_buff_len) {
   has_failed = 1;
  } else {
   ret |= ins_buff[pos++];
  }
 }

 return ret;
}
