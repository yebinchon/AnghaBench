
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RAnalOp ;


 int ef (char*,int,char const*) ;

__attribute__((used)) static void exi_dir1 (RAnalOp *op, ut8 addr, const char *operation) {
 if (addr < 0x80) {
  ef ("_idata,%d,+,%s=[1],", addr, operation);
 } else {
  ef ("_sfr,%d,+,%s=[1],", addr, operation);
 }
}
