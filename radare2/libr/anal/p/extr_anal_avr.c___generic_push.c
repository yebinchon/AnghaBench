
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnalOp ;


 int ESIL_A (char*,...) ;

__attribute__((used)) static void __generic_push(RAnalOp *op, int sz) {
 ESIL_A ("sp,_ram,+,");
 if (sz > 1) {
  ESIL_A ("-%d,+,", sz - 1);
 }
 ESIL_A ("=[%d],", sz);
 ESIL_A ("-%d,sp,+=,", sz);
}
