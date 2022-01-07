
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnal ;


 int R_ANAL_ARCHINFO_ALIGN ;
 int R_ANAL_ARCHINFO_MAX_OP_SIZE ;
 int R_ANAL_ARCHINFO_MIN_OP_SIZE ;

__attribute__((used)) static int archinfo(RAnal *anal, int q) {
 if (q == R_ANAL_ARCHINFO_ALIGN) {
  return 2;
 }
 if (q == R_ANAL_ARCHINFO_MAX_OP_SIZE) {
  return 4;
 }
 if (q == R_ANAL_ARCHINFO_MIN_OP_SIZE) {
  return 2;
 }
 return 2;
}
