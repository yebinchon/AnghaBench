#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int stbi_uc ;
typedef  int stbi__int32 ;
struct TYPE_6__ {int* out; int w; int h; int eflags; int* old_out; int start_x; int start_y; int max_x; int max_y; int line_size; int cur_x; int cur_y; int lflags; int step; int parse; int transparent; int* color_table; int flags; int** pal; void* delay; scalar_t__ lpal; } ;
typedef  TYPE_1__ stbi__gif ;
typedef  int /*<<< orphan*/  stbi__context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 int* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int,int,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,int,int) ; 
 scalar_t__ FUNC8 (int) ; 
 int* FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static stbi_uc *FUNC11(stbi__context *s, stbi__gif *g, int *comp, int req_comp)
{
   int i;
   stbi_uc *prev_out = 0;

   if (g->out == 0 && !FUNC6(s, g, comp,0))
      return 0; // stbi__g_failure_reason set by stbi__gif_header

   prev_out = g->out;
   g->out = (stbi_uc *) FUNC8(4 * g->w * g->h);
   if (g->out == 0) return FUNC2("outofmem", "Out of memory");

   switch ((g->eflags & 0x1C) >> 2) {
      case 0: // unspecified (also always used on 1st frame)
         FUNC3(g, 0, 0, 4 * g->w, 4 * g->w * g->h);
         break;
      case 1: // do not dispose
         if (prev_out) FUNC1(g->out, prev_out, 4 * g->w * g->h);
         g->old_out = prev_out;
         break;
      case 2: // dispose to background
         if (prev_out) FUNC1(g->out, prev_out, 4 * g->w * g->h);
         FUNC3(g, g->start_x, g->start_y, g->max_x, g->max_y);
         break;
      case 3: // dispose to previous
         if (g->old_out) {
            for (i = g->start_y; i < g->max_y; i += 4 * g->w)
               FUNC1(&g->out[i + g->start_x], &g->old_out[i + g->start_x], g->max_x - g->start_x);
         }
         break;
   }

   for (;;) {
      switch (FUNC5(s)) {
         case 0x2C: /* Image Descriptor */
         {
            int prev_trans = -1;
            stbi__int32 x, y, w, h;
            stbi_uc *o;

            x = FUNC4(s);
            y = FUNC4(s);
            w = FUNC4(s);
            h = FUNC4(s);
            if (((x + w) > (g->w)) || ((y + h) > (g->h)))
               return FUNC2("bad Image Descriptor", "Corrupt GIF");

            g->line_size = g->w * 4;
            g->start_x = x * 4;
            g->start_y = y * g->line_size;
            g->max_x   = g->start_x + w * 4;
            g->max_y   = g->start_y + h * g->line_size;
            g->cur_x   = g->start_x;
            g->cur_y   = g->start_y;

            g->lflags = FUNC5(s);

            if (g->lflags & 0x40) {
               g->step = 8 * g->line_size; // first interlaced spacing
               g->parse = 3;
            } else {
               g->step = g->line_size;
               g->parse = 0;
            }

            if (g->lflags & 0x80) {
               FUNC7(s,g->lpal, 2 << (g->lflags & 7), g->eflags & 0x01 ? g->transparent : -1);
               g->color_table = (stbi_uc *) g->lpal;
            } else if (g->flags & 0x80) {
               if (g->transparent >= 0 && (g->eflags & 0x01)) {
                  prev_trans = g->pal[g->transparent][3];
                  g->pal[g->transparent][3] = 0;
               }
               g->color_table = (stbi_uc *) g->pal;
            } else
               return FUNC2("missing color table", "Corrupt GIF");

            o = FUNC9(s, g);
            if (o == NULL) return NULL;

            if (prev_trans != -1)
               g->pal[g->transparent][3] = (stbi_uc) prev_trans;

            return o;
         }

         case 0x21: // Comment Extension.
         {
            int len;
            if (FUNC5(s) == 0xF9) { // Graphic Control Extension.
               len = FUNC5(s);
               if (len == 4) {
                  g->eflags = FUNC5(s);
                  g->delay = FUNC4(s);
                  g->transparent = FUNC5(s);
               } else {
                  FUNC10(s, len);
                  break;
               }
            }
            while ((len = FUNC5(s)) != 0)
               FUNC10(s, len);
            break;
         }

         case 0x3B: // gif stream termination code
            return (stbi_uc *) s; // using '1' causes warning on some compilers

         default:
            return FUNC2("unknown code", "Corrupt GIF");
      }
   }

   FUNC0(req_comp);
}