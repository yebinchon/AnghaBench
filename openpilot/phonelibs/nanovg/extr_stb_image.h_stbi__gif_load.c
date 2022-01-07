
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int stbi_uc ;
struct TYPE_4__ {int w; int h; scalar_t__ out; } ;
typedef TYPE_1__ stbi__gif ;
typedef int stbi__context ;
typedef int g ;


 int STBI_FREE (scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;
 int * stbi__convert_format (int *,int,int,int,int) ;
 int * stbi__gif_load_next (int *,TYPE_1__*,int*,int) ;

__attribute__((used)) static stbi_uc *stbi__gif_load(stbi__context *s, int *x, int *y, int *comp, int req_comp)
{
   stbi_uc *u = 0;
   stbi__gif g;
   memset(&g, 0, sizeof(g));

   u = stbi__gif_load_next(s, &g, comp, req_comp);
   if (u == (stbi_uc *) s) u = 0;
   if (u) {
      *x = g.w;
      *y = g.h;
      if (req_comp && req_comp != 4)
         u = stbi__convert_format(u, 4, req_comp, g.w, g.h);
   }
   else if (g.out)
      STBI_FREE(g.out);

   return u;
}
