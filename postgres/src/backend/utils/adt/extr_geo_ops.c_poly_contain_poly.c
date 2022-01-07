
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * p; } ;
struct TYPE_6__ {scalar_t__ npts; int * p; int boundbox; } ;
typedef TYPE_1__ POLYGON ;
typedef TYPE_2__ LSEG ;


 int Assert (int) ;
 int box_contain_box (int *,int *) ;
 int lseg_inside_poly (int *,int *,TYPE_1__*,int ) ;

__attribute__((used)) static bool
poly_contain_poly(POLYGON *contains_poly, POLYGON *contained_poly)
{
 int i;
 LSEG s;

 Assert(contains_poly->npts > 0 && contained_poly->npts > 0);





 if (!box_contain_box(&contains_poly->boundbox, &contained_poly->boundbox))
  return 0;

 s.p[0] = contained_poly->p[contained_poly->npts - 1];

 for (i = 0; i < contained_poly->npts; i++)
 {
  s.p[1] = contained_poly->p[i];
  if (!lseg_inside_poly(s.p, s.p + 1, contains_poly, 0))
   return 0;
  s.p[0] = s.p[1];
 }

 return 1;
}
