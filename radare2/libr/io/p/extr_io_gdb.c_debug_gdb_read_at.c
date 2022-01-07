
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef scalar_t__ ut64 ;


 scalar_t__ UT64_MAX ;
 int desc ;
 int gdbr_read_memory (int ,scalar_t__,int *,int) ;

__attribute__((used)) static int debug_gdb_read_at(ut8 *buf, int sz, ut64 addr) {
 if (sz < 1 || addr >= UT64_MAX || !desc) {
  return -1;
 }
 return gdbr_read_memory (desc, addr, buf, sz);
}
