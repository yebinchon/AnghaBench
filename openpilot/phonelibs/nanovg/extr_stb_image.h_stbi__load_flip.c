
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char stbi_uc ;
typedef int stbi__context ;


 unsigned char* stbi__load_main (int *,int*,int*,int*,int) ;
 scalar_t__ stbi__vertically_flip_on_load ;

__attribute__((used)) static unsigned char *stbi__load_flip(stbi__context *s, int *x, int *y, int *comp, int req_comp)
{
   unsigned char *result = stbi__load_main(s, x, y, comp, req_comp);

   if (stbi__vertically_flip_on_load && result != ((void*)0)) {
      int w = *x, h = *y;
      int depth = req_comp ? req_comp : *comp;
      int row,col,z;
      stbi_uc temp;


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

   return result;
}
