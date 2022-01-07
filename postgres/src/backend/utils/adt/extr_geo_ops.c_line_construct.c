
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef double float8 ;
struct TYPE_6__ {double A; double B; double C; } ;
struct TYPE_5__ {double x; int y; } ;
typedef TYPE_1__ Point ;
typedef TYPE_2__ LINE ;


 double DBL_MAX ;
 double float8_mi (int ,int ) ;
 int float8_mul (double,double) ;

__attribute__((used)) static inline void
line_construct(LINE *result, Point *pt, float8 m)
{
 if (m == DBL_MAX)
 {

  result->A = -1.0;
  result->B = 0.0;
  result->C = pt->x;
 }
 else
 {

  result->A = m;
  result->B = -1.0;
  result->C = float8_mi(pt->y, float8_mul(m, pt->x));

  if (result->C == 0.0)
   result->C = 0.0;
 }
}
