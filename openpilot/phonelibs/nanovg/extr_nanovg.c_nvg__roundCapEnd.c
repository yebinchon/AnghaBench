
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float x; float y; } ;
typedef int NVGvertex ;
typedef TYPE_1__ NVGpoint ;


 int NVG_NOTUSED (float) ;
 int NVG_PI ;
 float cosf (float) ;
 int nvg__vset (int *,float,float,float,int) ;
 float sinf (float) ;

__attribute__((used)) static NVGvertex* nvg__roundCapEnd(NVGvertex* dst, NVGpoint* p,
            float dx, float dy, float w, int ncap, float aa)
{
 int i;
 float px = p->x;
 float py = p->y;
 float dlx = dy;
 float dly = -dx;
 NVG_NOTUSED(aa);
 nvg__vset(dst, px + dlx*w, py + dly*w, 0,1); dst++;
 nvg__vset(dst, px - dlx*w, py - dly*w, 1,1); dst++;
 for (i = 0; i < ncap; i++) {
  float a = i/(float)(ncap-1)*NVG_PI;
  float ax = cosf(a) * w, ay = sinf(a) * w;
  nvg__vset(dst, px, py, 0.5f,1); dst++;
  nvg__vset(dst, px - dlx*ax + dx*ay, py - dly*ax + dy*ay, 0,1); dst++;
 }
 return dst;
}
