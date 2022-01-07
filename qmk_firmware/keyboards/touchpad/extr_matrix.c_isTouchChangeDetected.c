
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int D2 ;
 int readPin (int ) ;

uint8_t isTouchChangeDetected(void) {
  return !readPin(D2);
}
