
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int const ut64 ;
typedef int st64 ;



__attribute__((used)) static st64 get_immed_sgnext(const ut64 insn, const ut8 nbit) {
 const ut64 mask = ~(((ut64)1 << (nbit + 1)) - 1);
 return (st64) ((insn & ~mask)
  | (((insn & ((ut64)1 << nbit)) >> nbit) * mask));
}
