
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_ANAL_COND_EQ ;
 int R_ANAL_COND_GE ;
 int R_ANAL_COND_GT ;
 int R_ANAL_COND_LE ;
 int R_ANAL_COND_LT ;
 int R_ANAL_COND_NE ;
__attribute__((used)) static int cond_x862r2(int id) {
 switch (id) {
 case 140:
  return R_ANAL_COND_EQ;
 case 134:
  return R_ANAL_COND_NE;
 case 143:
 case 136:
  return R_ANAL_COND_LT;
 case 142:
 case 135:
  return R_ANAL_COND_LE;
 case 138:
 case 145:
  return R_ANAL_COND_GT;
 case 144:
  return R_ANAL_COND_GE;
 case 128:
 case 131:
 case 130:
 case 133:
 case 137:
 case 129:
 case 132:
 case 141:
 case 139:
  break;
 }
 return 0;
}
