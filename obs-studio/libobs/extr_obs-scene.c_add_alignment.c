
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vec2 {float x; float y; } ;


 int OBS_ALIGN_BOTTOM ;
 int OBS_ALIGN_LEFT ;
 int OBS_ALIGN_RIGHT ;
 int OBS_ALIGN_TOP ;

void add_alignment(struct vec2 *v, uint32_t align, int cx, int cy)
{
 if (align & OBS_ALIGN_RIGHT)
  v->x += (float)cx;
 else if ((align & OBS_ALIGN_LEFT) == 0)
  v->x += (float)(cx / 2);

 if (align & OBS_ALIGN_BOTTOM)
  v->y += (float)cy;
 else if ((align & OBS_ALIGN_TOP) == 0)
  v->y += (float)(cy / 2);
}
