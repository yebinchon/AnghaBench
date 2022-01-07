
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;
typedef int RBin ;


 scalar_t__ UT64_MAX ;
 int VA_NOREBASE ;
 int VA_TRUE ;
 scalar_t__ r_bin_get_vaddr (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static ut64 rva(RBin *bin, ut64 paddr, ut64 vaddr, int va) {
 if (va == VA_TRUE) {
  if (paddr != UT64_MAX) {
   return r_bin_get_vaddr (bin, paddr, vaddr);
  }
 }
 if (va == VA_NOREBASE) {
  return vaddr;
 }
 return paddr;
}
