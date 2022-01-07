
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;
typedef int RBinFile ;



__attribute__((used)) static ut64 get_vaddr (RBinFile *bf, ut64 baddr, ut64 paddr, ut64 vaddr) {
 return baddr + vaddr;
}
