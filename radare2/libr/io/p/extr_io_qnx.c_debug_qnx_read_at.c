
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef scalar_t__ ut64 ;
typedef int ut32 ;


 scalar_t__ UT64_MAX ;
 scalar_t__ c_addr ;
 scalar_t__ c_buff ;
 int c_size ;
 int desc ;
 int free (scalar_t__) ;
 int memcpy (int *,scalar_t__,int) ;
 int qnxr_read_memory (int ,scalar_t__,int *,int) ;
 scalar_t__ r_mem_dup (int *,int) ;

__attribute__((used)) static int debug_qnx_read_at (ut8 *buf, int sz, ut64 addr) {
 ut32 size_max = 500;
 ut32 packets = sz / size_max;
 ut32 last = sz % size_max;
 ut32 x;
 if (c_buff && addr != UT64_MAX && addr == c_addr) {
  memcpy (buf, c_buff, sz);
  return sz;
 }
 if (sz < 1 || addr >= UT64_MAX) {
  return -1;
 }
 for (x = 0; x < packets; x++) {
  qnxr_read_memory (desc, addr + x * size_max, (buf + x * size_max), size_max);
 }
 if (last) {
  qnxr_read_memory (desc, addr + x * size_max, (buf + x * size_max), last);
 }
 c_addr = addr;
 c_size = sz;




 return sz;
}
