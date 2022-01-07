
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
typedef unsigned long u64 ;
typedef unsigned long u32 ;
typedef unsigned long u16 ;


 int memcpy (void*,void*,unsigned int) ;

void kvm_mmio_write_buf(void *buf, unsigned int len, unsigned long data)
{
 void *datap = ((void*)0);
 union {
  u8 byte;
  u16 hword;
  u32 word;
  u64 dword;
 } tmp;

 switch (len) {
 case 1:
  tmp.byte = data;
  datap = &tmp.byte;
  break;
 case 2:
  tmp.hword = data;
  datap = &tmp.hword;
  break;
 case 4:
  tmp.word = data;
  datap = &tmp.word;
  break;
 case 8:
  tmp.dword = data;
  datap = &tmp.dword;
  break;
 }

 memcpy(buf, datap, len);
}
