
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *regname(int reg) {
 switch (reg) {
 case 131: return "AH";
 case 130: return "AL";
 case 129: return "X";
 case 128: return "Y";
 }
 return ((void*)0);
}
