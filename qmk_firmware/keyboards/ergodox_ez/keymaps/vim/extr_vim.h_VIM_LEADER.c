
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;







 int VIM_QUEUE ;


 int print (char*) ;

void VIM_LEADER(uint16_t keycode) {
  VIM_QUEUE = keycode;
  switch(keycode) {
    case 133: print("\e[32mc\e[0m"); break;
    case 132: print("\e[32mi\e[0m"); break;
    case 131: print("\e[32md\e[0m"); break;
    case 130: print("\e[32mi\e[0m"); break;
    case 129: print("\e[32mv\e[0m"); break;
    case 128: print("\e[32mi\e[0m"); break;
    case 134: print("❎"); break;
  }
}
