
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARM_CC_AL ;
 int R_ANAL_COND_AL ;
 int R_ANAL_COND_EQ ;
 int R_ANAL_COND_GE ;
 int R_ANAL_COND_GT ;
 int R_ANAL_COND_HI ;
 int R_ANAL_COND_HS ;
 int R_ANAL_COND_LE ;
 int R_ANAL_COND_LO ;
 int R_ANAL_COND_LS ;
 int R_ANAL_COND_LT ;
 int R_ANAL_COND_MI ;
 int R_ANAL_COND_NE ;
 int R_ANAL_COND_PL ;
 int R_ANAL_COND_VC ;
 int R_ANAL_COND_VS ;

__attribute__((used)) static int cond_cs2r2(int cc) {
 if (cc == ARM_CC_AL || cc < 0) {
  cc = R_ANAL_COND_AL;
 } else {
  switch (cc) {
  case 141: cc = R_ANAL_COND_EQ; break;
  case 131: cc = R_ANAL_COND_NE; break;
  case 137: cc = R_ANAL_COND_HS; break;
  case 135: cc = R_ANAL_COND_LO; break;
  case 132: cc = R_ANAL_COND_MI; break;
  case 130: cc = R_ANAL_COND_PL; break;
  case 128: cc = R_ANAL_COND_VS; break;
  case 129: cc = R_ANAL_COND_VC; break;

  case 138: cc = R_ANAL_COND_HI; break;
  case 134: cc = R_ANAL_COND_LS; break;
  case 140: cc = R_ANAL_COND_GE; break;
  case 133: cc = R_ANAL_COND_LT; break;
  case 139: cc = R_ANAL_COND_GT; break;
  case 136: cc = R_ANAL_COND_LE; break;
  }
 }
 return cc;
}
