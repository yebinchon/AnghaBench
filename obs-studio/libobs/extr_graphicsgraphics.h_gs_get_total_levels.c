
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



__attribute__((used)) static inline uint32_t gs_get_total_levels(uint32_t width, uint32_t height)
{
 uint32_t size = width > height ? width : height;
 uint32_t num_levels = 0;

 while (size > 1) {
  size /= 2;
  num_levels++;
 }

 return num_levels;
}
