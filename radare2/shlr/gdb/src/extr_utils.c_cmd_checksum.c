
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



uint8_t cmd_checksum(const char *command) {
 uint8_t sum = 0;
 while (*command != '\0') {
  sum += *command++;
 }
 return sum;
}
