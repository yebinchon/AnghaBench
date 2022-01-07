
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_ANAL_COND_ALWAYS ;
 int R_ANAL_COND_EQ ;
 int R_ANAL_COND_GE ;
 int R_ANAL_COND_GT ;
 int R_ANAL_COND_LE ;
 int R_ANAL_COND_LT ;
 int R_ANAL_COND_NE ;
 int R_ANAL_COND_NEVER ;
 int R_ANAL_COND_UNKNOWN ;

__attribute__((used)) static int icc_to_r_cond(const int cond) {

 switch(cond) {
 case 143: return R_ANAL_COND_ALWAYS;
 case 142: return R_ANAL_COND_GE;
 case 141: return R_ANAL_COND_LT;
 case 140: return R_ANAL_COND_EQ;
 case 139: return R_ANAL_COND_GT;
 case 138: return R_ANAL_COND_GE;
 case 137: return R_ANAL_COND_GT;
 case 136: return R_ANAL_COND_LT;
 case 135: return R_ANAL_COND_LE;
 case 134: return R_ANAL_COND_LE;
 case 133: return R_ANAL_COND_NEVER;
 case 132: return R_ANAL_COND_NE;
 case 131:
 case 130:
 case 129:
 case 128:
 default: return R_ANAL_COND_UNKNOWN;
 }
}
