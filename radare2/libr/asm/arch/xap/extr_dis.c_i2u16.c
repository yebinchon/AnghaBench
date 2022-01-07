
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct instruction {int dummy; } ;



__attribute__((used)) static uint16_t i2u16(struct instruction *in) {
 return *((uint16_t*)in);
}
