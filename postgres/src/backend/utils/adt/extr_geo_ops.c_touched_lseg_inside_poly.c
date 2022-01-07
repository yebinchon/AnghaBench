
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void** p; } ;
typedef void* Point ;
typedef int POLYGON ;
typedef TYPE_1__ LSEG ;


 scalar_t__ lseg_contain_point (TYPE_1__*,void**) ;
 int lseg_inside_poly (void**,void**,int *,int) ;
 scalar_t__ point_eq_point (void**,void**) ;

__attribute__((used)) static bool
touched_lseg_inside_poly(Point *a, Point *b, LSEG *s, POLYGON *poly, int start)
{

 LSEG t;

 t.p[0] = *a;
 t.p[1] = *b;

 if (point_eq_point(a, s->p))
 {
  if (lseg_contain_point(&t, s->p + 1))
   return lseg_inside_poly(b, s->p + 1, poly, start);
 }
 else if (point_eq_point(a, s->p + 1))
 {
  if (lseg_contain_point(&t, s->p))
   return lseg_inside_poly(b, s->p, poly, start);
 }
 else if (lseg_contain_point(&t, s->p))
 {
  return lseg_inside_poly(b, s->p, poly, start);
 }
 else if (lseg_contain_point(&t, s->p + 1))
 {
  return lseg_inside_poly(b, s->p + 1, poly, start);
 }

 return 1;
}
