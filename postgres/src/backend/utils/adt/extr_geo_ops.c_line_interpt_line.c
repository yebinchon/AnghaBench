
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef double float8 ;
struct TYPE_4__ {double B; double A; double C; } ;
typedef int Point ;
typedef TYPE_1__ LINE ;


 scalar_t__ FPeq (double,int ) ;
 int FPzero (double) ;
 double float8_div (double,double) ;
 double float8_mi (int ,int ) ;
 int float8_mul (double,double) ;
 double float8_pl (int ,double) ;
 int point_construct (int *,double,double) ;

__attribute__((used)) static bool
line_interpt_line(Point *result, LINE *l1, LINE *l2)
{
 float8 x,
    y;

 if (!FPzero(l1->B))
 {
  if (FPeq(l2->A, float8_mul(l1->A, float8_div(l2->B, l1->B))))
   return 0;

  x = float8_div(float8_mi(float8_mul(l1->B, l2->C),
         float8_mul(l2->B, l1->C)),
        float8_mi(float8_mul(l1->A, l2->B),
         float8_mul(l2->A, l1->B)));
  y = float8_div(-float8_pl(float8_mul(l1->A, x), l1->C), l1->B);
 }
 else if (!FPzero(l2->B))
 {
  if (FPeq(l1->A, float8_mul(l2->A, float8_div(l1->B, l2->B))))
   return 0;

  x = float8_div(float8_mi(float8_mul(l2->B, l1->C),
         float8_mul(l1->B, l2->C)),
        float8_mi(float8_mul(l2->A, l1->B),
         float8_mul(l1->A, l2->B)));
  y = float8_div(-float8_pl(float8_mul(l2->A, x), l2->C), l2->B);
 }
 else
  return 0;


 if (x == 0.0)
  x = 0.0;
 if (y == 0.0)
  y = 0.0;

 if (result != ((void*)0))
  point_construct(result, x, y);

 return 1;
}
