
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {void* y; void* x; } ;
struct TYPE_9__ {void* radius; TYPE_5__ center; } ;
struct TYPE_8__ {int npts; int * p; } ;
typedef TYPE_1__ POLYGON ;
typedef TYPE_2__ CIRCLE ;


 int Assert (int) ;
 void* float8_div (void*,int) ;
 void* float8_pl (void*,int ) ;
 int point_add_point (TYPE_5__*,TYPE_5__*,int *) ;
 int point_dt (int *,TYPE_5__*) ;

__attribute__((used)) static void
poly_to_circle(CIRCLE *result, POLYGON *poly)
{
 int i;

 Assert(poly->npts > 0);

 result->center.x = 0;
 result->center.y = 0;
 result->radius = 0;

 for (i = 0; i < poly->npts; i++)
  point_add_point(&result->center, &result->center, &poly->p[i]);
 result->center.x = float8_div(result->center.x, poly->npts);
 result->center.y = float8_div(result->center.y, poly->npts);

 for (i = 0; i < poly->npts; i++)
  result->radius = float8_pl(result->radius,
           point_dt(&poly->p[i], &result->center));
 result->radius = float8_div(result->radius, poly->npts);
}
