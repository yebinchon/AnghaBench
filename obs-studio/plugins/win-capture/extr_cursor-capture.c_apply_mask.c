
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int bit_to_alpha (int *,long,int) ;

__attribute__((used)) static inline void apply_mask(uint8_t *color, uint8_t *mask, long num_pixels)
{
 for (long i = 0; i < num_pixels; i++)
  color[i * 4 + 3] = bit_to_alpha(mask, i, 0);
}
