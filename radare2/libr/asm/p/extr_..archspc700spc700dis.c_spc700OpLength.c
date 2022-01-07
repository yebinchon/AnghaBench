
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int spc700OpLength(int spcoptype){
 switch(spcoptype) {
 case 128:
  return 1;
 case 130:
  return 2;
 case 129:
 case 131:
  return 3;
 }
 return 0;
}
