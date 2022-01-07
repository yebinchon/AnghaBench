
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;
typedef int uint16_t ;
struct instruction {int dummy; } ;



__attribute__((used)) static inline ut16 i2ut16(struct instruction *in) {
 return *((uint16_t*)in);
}
