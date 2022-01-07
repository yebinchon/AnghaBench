
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;
typedef int RBin ;


 scalar_t__ UT64_MAX ;
 scalar_t__ rva (int *,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static ut64 compute_addr(RBin *bin, ut64 paddr, ut64 vaddr, int va) {
 return paddr == UT64_MAX? vaddr: rva (bin, paddr, vaddr, va);
}
