
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; scalar_t__ family; } ;
typedef TYPE_1__ RAnalOp ;


 scalar_t__ R_ANAL_OP_FAMILY_PRIV ;
__attribute__((used)) static bool checkAnalType(RAnalOp *op, int t) {
 if (t == 'c') {
  switch (op->type) {
  case 131:
  case 128:
  case 135:
   return 1;
  }
 } else if (t == 's') {
  if (op->family == R_ANAL_OP_FAMILY_PRIV) {
   return 1;
  }
  switch (op->type) {
  case 130:
   return 1;
  }
 } else if (t == 'i') {
  switch (op->type) {
  case 129:
  case 133:
   return 1;
  }
 } else if (t == 'j') {
  switch (op->type) {
  case 132:


  case 134:
   return 1;
  default:
   break;
  }
 }
 return 0;
}
