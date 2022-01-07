
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* color_table ;

__attribute__((used)) static void __unrgb(int color, int *r, int *g, int *b) {
 if (color < 0 || color > 255) {
  *r = *g = *b = 0;
 } else {
  int rgb = color_table[color];
  *r = (rgb >> 16) & 0xff;
  *g = (rgb >> 8) & 0xff;
  *b = rgb & 0xff;
 }
}
