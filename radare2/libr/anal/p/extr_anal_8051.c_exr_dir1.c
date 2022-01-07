
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RAnalOp ;


 int ef (char*,int) ;

__attribute__((used)) static void exr_dir1(RAnalOp *op, ut8 addr) {
 if (addr < 0x80) {
  ef ("_idata,%d,+,[1],", addr);
 } else {
  ef ("_sfr,%d,+,[1],", addr);
 }
}
