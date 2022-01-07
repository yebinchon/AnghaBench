
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* color_table ;

__attribute__((used)) static int __lookup_rgb(int r, int g, int b) {
 int i, color = (r << 16) + (g << 8) + b;

 for (i = 16; i < 256; ++i) {
  if (color_table[i] == color) {
   return i;
  }
 }
 return -1;
}
