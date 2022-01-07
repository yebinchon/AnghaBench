
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 void* R_DIM (int,int ,int) ;

__attribute__((used)) static ut32 __approximate_rgb(int r, int g, int b) {
 bool grey = (r > 0 && r < 255 && r == g && r == b);
 if (grey) {
  return 232 + (int)((double)r / (255 / 24.1));
 }
 const int k = (256.0 / 6);
 r = R_DIM (r / k, 0, 6);
 g = R_DIM (g / k, 0, 6);
 b = R_DIM (b / k, 0, 6);
 return 16 + (r * 36) + (g * 6) + b;

}
