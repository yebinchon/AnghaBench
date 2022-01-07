
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
int gb_get_rombanks(ut8 id){
 switch (id){
  case 135:
   return 2;
  case 133:
   return 4;
  case 130:
   return 8;
  case 136:
   return 16;
  case 134:
   return 32;
  case 132:
   return 64;
  case 137:
   return 128;
  case 131:
   return 72;
  case 129:
   return 80;
  case 128:
   return 96;
  }
 return 2;
}
