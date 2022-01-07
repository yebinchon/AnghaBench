
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int csh ;
struct TYPE_4__ {int address; } ;
typedef TYPE_1__ cs_insn ;


 int UT64_MAX ;
 int cs_disasm (int ,int const*,int,int const,int,TYPE_1__**) ;
 int cs_free (TYPE_1__*,int) ;

__attribute__((used)) static ut64 lookahead(csh handle, const ut64 addr, const ut8 *buf, int len, int distance) {
 cs_insn *insn = ((void*)0);
 int n = cs_disasm (handle, buf, len, addr, distance, &insn);
 if (n < 1) {
  return UT64_MAX;
 }
 ut64 result = insn[n - 1].address;
 cs_free (insn, n);
 return result;
}
