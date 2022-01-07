
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int R_ANAL_EX_CODEOP_CJMP ;
 int R_ANAL_EX_CODEOP_JMP ;

__attribute__((used)) static bool isRelative (ut32 type) {
 if (type & R_ANAL_EX_CODEOP_CJMP) {
  return 1;
 }
 if (type & R_ANAL_EX_CODEOP_JMP) {
  return 1;
 }
 return 0;
}
