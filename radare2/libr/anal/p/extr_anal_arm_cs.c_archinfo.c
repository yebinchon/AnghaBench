
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bits; } ;
typedef TYPE_1__ RAnal ;


 int R_ANAL_ARCHINFO_ALIGN ;
 int R_ANAL_ARCHINFO_DATA_ALIGN ;
 int R_ANAL_ARCHINFO_MAX_OP_SIZE ;
 int R_ANAL_ARCHINFO_MIN_OP_SIZE ;

__attribute__((used)) static int archinfo(RAnal *anal, int q) {
 if (q == R_ANAL_ARCHINFO_DATA_ALIGN) {
  return 4;
 }
 if (q == R_ANAL_ARCHINFO_ALIGN) {
  if (anal && anal->bits == 16) {
   return 2;
  }
  return 4;
 }
 if (q == R_ANAL_ARCHINFO_MAX_OP_SIZE) {
  return 4;
 }
 if (q == R_ANAL_ARCHINFO_MIN_OP_SIZE) {
  if (anal && anal->bits == 16) {
   return 2;
  }
  return 4;
 }
 return 4;
}
