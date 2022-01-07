
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REgg ;


 int R_NGP ;
 char const** regs ;

__attribute__((used)) static const char *emit_regs(REgg *egg, int idx) {
 return regs[idx % R_NGP];
}
