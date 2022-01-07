
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int stbi_uc ;
struct TYPE_5__ {int img_x; int img_y; int img_n; } ;
typedef TYPE_1__ stbi__context ;


 int * stbi__convert_format (int *,int,int,int,int) ;
 int * stbi__errpuc (char*,char*) ;
 int stbi__getn (TYPE_1__*,int *,int) ;
 scalar_t__ stbi__malloc (int) ;
 int stbi__pnm_info (TYPE_1__*,int*,int*,int*) ;

__attribute__((used)) static stbi_uc *stbi__pnm_load(stbi__context *s, int *x, int *y, int *comp, int req_comp)
{
   stbi_uc *out;
   if (!stbi__pnm_info(s, (int *)&s->img_x, (int *)&s->img_y, (int *)&s->img_n))
      return 0;
   *x = s->img_x;
   *y = s->img_y;
   *comp = s->img_n;

   out = (stbi_uc *) stbi__malloc(s->img_n * s->img_x * s->img_y);
   if (!out) return stbi__errpuc("outofmem", "Out of memory");
   stbi__getn(s, out, s->img_n * s->img_x * s->img_y);

   if (req_comp && req_comp != s->img_n) {
      out = stbi__convert_format(out, s->img_n, req_comp, s->img_x, s->img_y);
      if (out == ((void*)0)) return out;
   }
   return out;
}
