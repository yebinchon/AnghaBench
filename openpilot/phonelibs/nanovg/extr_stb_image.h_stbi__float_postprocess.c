
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ stbi__vertically_flip_on_load ;

__attribute__((used)) static void stbi__float_postprocess(float *result, int *x, int *y, int *comp, int req_comp)
{
   if (stbi__vertically_flip_on_load && result != ((void*)0)) {
      int w = *x, h = *y;
      int depth = req_comp ? req_comp : *comp;
      int row,col,z;
      float temp;


      for (row = 0; row < (h>>1); row++) {
         for (col = 0; col < w; col++) {
            for (z = 0; z < depth; z++) {
               temp = result[(row * w + col) * depth + z];
               result[(row * w + col) * depth + z] = result[((h - row - 1) * w + col) * depth + z];
               result[((h - row - 1) * w + col) * depth + z] = temp;
            }
         }
      }
   }
}
