
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static uint16_t extractDataFromMask(uint16_t data, uint16_t mask) {
 int i, j;
 uint16_t result = 0;



 for (i = 0, j = 0; i < 16; i++) {

  if (mask & (1<<i)) {



   if (((mask & (1<<i)) & data) != 0)
    result |= (1<<j);

   j++;
  }
 }

 return result;
}
