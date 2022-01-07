
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ stbi_uc ;
struct TYPE_3__ {size_t bgindex; int w; scalar_t__* out; scalar_t__** pal; } ;
typedef TYPE_1__ stbi__gif ;



__attribute__((used)) static void stbi__fill_gif_background(stbi__gif *g, int x0, int y0, int x1, int y1)
{
   int x, y;
   stbi_uc *c = g->pal[g->bgindex];
   for (y = y0; y < y1; y += 4 * g->w) {
      for (x = x0; x < x1; x += 4) {
         stbi_uc *p = &g->out[y + x];
         p[0] = c[2];
         p[1] = c[1];
         p[2] = c[0];
         p[3] = 0;
      }
   }
}
