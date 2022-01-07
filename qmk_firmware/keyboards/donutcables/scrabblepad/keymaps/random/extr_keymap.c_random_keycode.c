
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int lower ;
 int rand () ;
 int upper ;

uint16_t random_keycode(void) {
  return lower + (rand() % (upper - lower + 1));
}
