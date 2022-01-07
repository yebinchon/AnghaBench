
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RAnalOp ;


 int exi_dir1 (int *,int ,char const*) ;

__attribute__((used)) static void exi_bit (RAnalOp *op, ut8 addr, const char *operation) {
 exi_dir1 (op, addr, operation);
}
