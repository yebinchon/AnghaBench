
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_NGP ;
 char const** regs ;

__attribute__((used)) static const char *getreg(int i) {
 if (i < 0 || i >= R_NGP) {
  return ((void*)0);
 }
 return regs[i];
}
