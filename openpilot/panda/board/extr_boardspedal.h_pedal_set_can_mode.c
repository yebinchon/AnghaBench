
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



 int puth (int) ;
 int puts (char*) ;

void pedal_set_can_mode(uint8_t mode){
  switch (mode) {
    case 128:
      break;
    default:
      puts("Tried to set unsupported CAN mode: "); puth(mode); puts("\n");
      break;
  }
}
