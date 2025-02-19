
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
typedef int ut32 ;
typedef int uint8_t ;
struct TYPE_3__ {int read_max; } ;


 scalar_t__ UT64_MAX ;
 TYPE_1__* desc ;
 int gdbr_write_memory (TYPE_1__*,scalar_t__,int const*,int) ;

__attribute__((used)) static int debug_gdb_write_at(const ut8 *buf, int sz, ut64 addr) {
 ut32 x, size_max;
 ut32 packets;
 ut32 last;
 if (sz < 1 || addr >= UT64_MAX || !desc) {
  return -1;
 }
 size_max = desc->read_max;
 packets = sz / size_max;
 last = sz % size_max;
 for (x = 0; x < packets; x++) {
  gdbr_write_memory (desc, addr + x * size_max,
   (const uint8_t*)(buf + x * size_max), size_max);
 }
 if (last) {
  gdbr_write_memory (desc, addr + x * size_max,
   (buf + x * size_max), last);
 }
 return sz;
}
