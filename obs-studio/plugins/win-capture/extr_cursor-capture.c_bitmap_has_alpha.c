
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



__attribute__((used)) static inline bool bitmap_has_alpha(uint8_t *data, long num_pixels)
{
 for (long i = 0; i < num_pixels; i++) {
  if (data[i * 4 + 3] != 0) {
   return 1;
  }
 }

 return 0;
}
