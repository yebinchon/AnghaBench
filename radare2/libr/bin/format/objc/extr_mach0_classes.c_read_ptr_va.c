
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int ut32 ;
typedef scalar_t__ mach0_ut ;
typedef int RBinFile ;


 int r_return_val_if_fail (int *,int) ;
 int read_ptr_pa (int *,scalar_t__,scalar_t__*) ;
 scalar_t__ va2pa (int ,int*,int*,int *) ;

__attribute__((used)) static bool read_ptr_va(RBinFile *bf, ut64 vaddr, mach0_ut *out) {
 r_return_val_if_fail (bf, 0);
 ut32 offset = 0, left = 0;
 mach0_ut paddr = va2pa (vaddr, &offset, &left, bf);
 if (paddr == 0 || left < sizeof (mach0_ut)) {
  return 0;
 }
 return read_ptr_pa (bf, paddr, out);
}
