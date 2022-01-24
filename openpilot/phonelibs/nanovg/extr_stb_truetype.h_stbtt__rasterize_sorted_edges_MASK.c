#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ stbtt__hheap ;
struct TYPE_15__ {float y0; float y1; } ;
typedef  TYPE_2__ stbtt__edge ;
struct TYPE_16__ {int w; int h; unsigned char* pixels; int stride; } ;
typedef  TYPE_3__ stbtt__bitmap ;
struct TYPE_17__ {float ey; int direction; struct TYPE_17__* next; scalar_t__ fdx; int /*<<< orphan*/  fx; } ;
typedef  TYPE_4__ stbtt__active_edge ;
typedef  int /*<<< orphan*/  scanline ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (float*,void*) ; 
 scalar_t__ FUNC2 (int,void*) ; 
 int /*<<< orphan*/  FUNC3 (float*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (float) ; 
 int /*<<< orphan*/  FUNC5 (float*,float*,int,TYPE_4__*,float) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_4__*) ; 
 TYPE_4__* FUNC8 (TYPE_1__*,TYPE_2__*,int,float,void*) ; 

__attribute__((used)) static void FUNC9(stbtt__bitmap *result, stbtt__edge *e, int n, int vsubsample, int off_x, int off_y, void *userdata)
{
   stbtt__hheap hh = { 0, 0, 0 };
   stbtt__active_edge *active = NULL;
   int y,j=0, i;
   float scanline_data[129], *scanline, *scanline2;

   if (result->w > 64)
      scanline = (float *) FUNC2((result->w*2+1) * sizeof(float), userdata);
   else
      scanline = scanline_data;

   scanline2 = scanline + result->w;

   y = off_y;
   e[n].y0 = (float) (off_y + result->h) + 1;

   while (j < result->h) {
      // find center of pixel for this scanline
      float scan_y_top    = y + 0.0f;
      float scan_y_bottom = y + 1.0f;
      stbtt__active_edge **step = &active;

      FUNC3(scanline , 0, result->w*sizeof(scanline[0]));
      FUNC3(scanline2, 0, (result->w+1)*sizeof(scanline[0]));

      // update all active edges;
      // remove all active edges that terminate before the top of this scanline
      while (*step) {
         stbtt__active_edge * z = *step;
         if (z->ey <= scan_y_top) {
            *step = z->next; // delete from list
            FUNC0(z->direction);
            z->direction = 0;
            FUNC7(&hh, z);
         } else {
            step = &((*step)->next); // advance through list
         }
      }

      // insert all edges that start before the bottom of this scanline
      while (e->y0 <= scan_y_bottom) {
         if (e->y0 != e->y1) {
            stbtt__active_edge *z = FUNC8(&hh, e, off_x, scan_y_top, userdata);
            if (z != NULL) {
               FUNC0(z->ey >= scan_y_top);
               // insert at front
               z->next = active;
               active = z;
            }
         }
         ++e;
      }

      // now process all active edges
      if (active)
         FUNC5(scanline, scanline2+1, result->w, active, scan_y_top);

      {
         float sum = 0;
         for (i=0; i < result->w; ++i) {
            float k;
            int m;
            sum += scanline2[i];
            k = scanline[i] + sum;
            k = (float) FUNC4(k)*255 + 0.5f;
            m = (int) k;
            if (m > 255) m = 255;
            result->pixels[j*result->stride + i] = (unsigned char) m;
         }
      }
      // advance all the edges
      step = &active;
      while (*step) {
         stbtt__active_edge *z = *step;
         z->fx += z->fdx; // advance to position for current scanline
         step = &((*step)->next); // advance through list
      }

      ++y;
      ++j;
   }

   FUNC6(&hh, userdata);

   if (scanline != scanline_data)
      FUNC1(scanline, userdata);
}