
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RIO ;


 int UT32_MAX ;
 int UT64_MAX ;
 int r_io_is_valid_offset (int *,int,int ) ;

__attribute__((used)) static bool myvalid(RIO *io, ut64 addr) {
 if (addr < 0x100) {
  return 0;
 }
 if (addr == UT32_MAX || addr == UT64_MAX) {
  return 0;
 }
 if (!r_io_is_valid_offset (io, addr, 0)) {
  return 0;
 }
 return 1;
}
