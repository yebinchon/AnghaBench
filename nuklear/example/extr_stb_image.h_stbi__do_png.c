
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned char* out; unsigned char* expanded; unsigned char* idata; TYPE_1__* s; } ;
typedef TYPE_2__ stbi__png ;
struct TYPE_5__ {int img_out_n; int img_x; int img_y; } ;


 int STBI_FREE (unsigned char*) ;
 int STBI__SCAN_load ;
 unsigned char* stbi__convert_format (unsigned char*,int,int,int,int) ;
 unsigned char* stbi__errpuc (char*,char*) ;
 scalar_t__ stbi__parse_png_file (TYPE_2__*,int ,int) ;

__attribute__((used)) static unsigned char *stbi__do_png(stbi__png *p, int *x, int *y, int *n, int req_comp)
{
   unsigned char *result=((void*)0);
   if (req_comp < 0 || req_comp > 4) return stbi__errpuc("bad req_comp", "Internal error");
   if (stbi__parse_png_file(p, STBI__SCAN_load, req_comp)) {
      result = p->out;
      p->out = ((void*)0);
      if (req_comp && req_comp != p->s->img_out_n) {
         result = stbi__convert_format(result, p->s->img_out_n, req_comp, p->s->img_x, p->s->img_y);
         p->s->img_out_n = req_comp;
         if (result == ((void*)0)) return result;
      }
      *x = p->s->img_x;
      *y = p->s->img_y;
      if (n) *n = p->s->img_out_n;
   }
   STBI_FREE(p->out); p->out = ((void*)0);
   STBI_FREE(p->expanded); p->expanded = ((void*)0);
   STBI_FREE(p->idata); p->idata = ((void*)0);

   return result;
}
