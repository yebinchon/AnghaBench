
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_2__ {int version; int paddr; int psize; int vaddr; int code_pa; int sign_va; int sign_sz; int cert_sz; int cert_va; int load_index; } ;
typedef int SblHeader ;
typedef int RBuffer ;


 int eprintf (char*,...) ;
 int r_buf_fread_at (int *,int ,int *,char*,int) ;
 int r_buf_size (int *) ;
 int r_return_val_if_fail (int *,int) ;
 TYPE_1__ sb ;

__attribute__((used)) static bool check_buffer(RBuffer *b) {
 r_return_val_if_fail (b, 0);
 ut64 bufsz = r_buf_size (b);
 if (sizeof (SblHeader) < bufsz) {
  int ret = r_buf_fread_at (b, 0, (ut8*)&sb, "10i", 1);
  if (!ret) {
   return 0;
  }
  if (sb.version != 3) {
   return 0;
  }
  if (sb.paddr + sizeof (SblHeader) > bufsz) {
   return 0;
  }
  if (sb.vaddr < 0x100 || sb.psize > bufsz) {
   return 0;
  }
  if (sb.cert_va < sb.vaddr) {
   return 0;
  }
  if (sb.cert_sz >= 0xf0000) {
   return 0;
  }
  if (sb.sign_va < sb.vaddr) {
   return 0;
  }
  if (sb.sign_sz >= 0xf0000) {
   return 0;
  }
  if (sb.load_index < 1 || sb.load_index > 0x40) {
   return 0;
  }

  return 1;
 }
 return 0;
}
