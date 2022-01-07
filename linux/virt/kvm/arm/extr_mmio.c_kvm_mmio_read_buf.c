
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
typedef unsigned long u64 ;
typedef unsigned long u32 ;
typedef unsigned long u16 ;


 int memcpy (unsigned long*,void const*,unsigned int) ;

unsigned long kvm_mmio_read_buf(const void *buf, unsigned int len)
{
 unsigned long data = 0;
 union {
  u16 hword;
  u32 word;
  u64 dword;
 } tmp;

 switch (len) {
 case 1:
  data = *(u8 *)buf;
  break;
 case 2:
  memcpy(&tmp.hword, buf, len);
  data = tmp.hword;
  break;
 case 4:
  memcpy(&tmp.word, buf, len);
  data = tmp.word;
  break;
 case 8:
  memcpy(&tmp.dword, buf, len);
  data = tmp.dword;
  break;
 }

 return data;
}
