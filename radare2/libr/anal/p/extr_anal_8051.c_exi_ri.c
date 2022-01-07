
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RAnalOp ;


 int ef (char*,int ,char const*) ;

__attribute__((used)) static void exi_ri(RAnalOp *op, ut8 reg, const char *operation) {
 ef ("_idata,r%d,+,%s=[1],", reg, operation);
}
