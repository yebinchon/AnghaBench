
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int stbi_uc ;
typedef int stbi__int32 ;
struct TYPE_6__ {int* out; int w; int h; int eflags; int* old_out; int start_x; int start_y; int max_x; int max_y; int line_size; int cur_x; int cur_y; int lflags; int step; int parse; int transparent; int* color_table; int flags; int** pal; void* delay; scalar_t__ lpal; } ;
typedef TYPE_1__ stbi__gif ;
typedef int stbi__context ;


 int STBI_NOTUSED (int) ;
 int memcpy (int*,int*,int) ;
 int* stbi__errpuc (char*,char*) ;
 int stbi__fill_gif_background (TYPE_1__*,int,int,int,int) ;
 void* stbi__get16le (int *) ;
 int stbi__get8 (int *) ;
 int stbi__gif_header (int *,TYPE_1__*,int*,int ) ;
 int stbi__gif_parse_colortable (int *,scalar_t__,int,int) ;
 scalar_t__ stbi__malloc (int) ;
 int* stbi__process_gif_raster (int *,TYPE_1__*) ;
 int stbi__skip (int *,int) ;

__attribute__((used)) static stbi_uc *stbi__gif_load_next(stbi__context *s, stbi__gif *g, int *comp, int req_comp)
{
   int i;
   stbi_uc *prev_out = 0;

   if (g->out == 0 && !stbi__gif_header(s, g, comp,0))
      return 0;

   prev_out = g->out;
   g->out = (stbi_uc *) stbi__malloc(4 * g->w * g->h);
   if (g->out == 0) return stbi__errpuc("outofmem", "Out of memory");

   switch ((g->eflags & 0x1C) >> 2) {
      case 0:
         stbi__fill_gif_background(g, 0, 0, 4 * g->w, 4 * g->w * g->h);
         break;
      case 1:
         if (prev_out) memcpy(g->out, prev_out, 4 * g->w * g->h);
         g->old_out = prev_out;
         break;
      case 2:
         if (prev_out) memcpy(g->out, prev_out, 4 * g->w * g->h);
         stbi__fill_gif_background(g, g->start_x, g->start_y, g->max_x, g->max_y);
         break;
      case 3:
         if (g->old_out) {
            for (i = g->start_y; i < g->max_y; i += 4 * g->w)
               memcpy(&g->out[i + g->start_x], &g->old_out[i + g->start_x], g->max_x - g->start_x);
         }
         break;
   }

   for (;;) {
      switch (stbi__get8(s)) {
         case 0x2C:
         {
            int prev_trans = -1;
            stbi__int32 x, y, w, h;
            stbi_uc *o;

            x = stbi__get16le(s);
            y = stbi__get16le(s);
            w = stbi__get16le(s);
            h = stbi__get16le(s);
            if (((x + w) > (g->w)) || ((y + h) > (g->h)))
               return stbi__errpuc("bad Image Descriptor", "Corrupt GIF");

            g->line_size = g->w * 4;
            g->start_x = x * 4;
            g->start_y = y * g->line_size;
            g->max_x = g->start_x + w * 4;
            g->max_y = g->start_y + h * g->line_size;
            g->cur_x = g->start_x;
            g->cur_y = g->start_y;

            g->lflags = stbi__get8(s);

            if (g->lflags & 0x40) {
               g->step = 8 * g->line_size;
               g->parse = 3;
            } else {
               g->step = g->line_size;
               g->parse = 0;
            }

            if (g->lflags & 0x80) {
               stbi__gif_parse_colortable(s,g->lpal, 2 << (g->lflags & 7), g->eflags & 0x01 ? g->transparent : -1);
               g->color_table = (stbi_uc *) g->lpal;
            } else if (g->flags & 0x80) {
               if (g->transparent >= 0 && (g->eflags & 0x01)) {
                  prev_trans = g->pal[g->transparent][3];
                  g->pal[g->transparent][3] = 0;
               }
               g->color_table = (stbi_uc *) g->pal;
            } else
               return stbi__errpuc("missing color table", "Corrupt GIF");

            o = stbi__process_gif_raster(s, g);
            if (o == ((void*)0)) return ((void*)0);

            if (prev_trans != -1)
               g->pal[g->transparent][3] = (stbi_uc) prev_trans;

            return o;
         }

         case 0x21:
         {
            int len;
            if (stbi__get8(s) == 0xF9) {
               len = stbi__get8(s);
               if (len == 4) {
                  g->eflags = stbi__get8(s);
                  g->delay = stbi__get16le(s);
                  g->transparent = stbi__get8(s);
               } else {
                  stbi__skip(s, len);
                  break;
               }
            }
            while ((len = stbi__get8(s)) != 0)
               stbi__skip(s, len);
            break;
         }

         case 0x3B:
            return (stbi_uc *) s;

         default:
            return stbi__errpuc("unknown code", "Corrupt GIF");
      }
   }

   STBI_NOTUSED(req_comp);
}
