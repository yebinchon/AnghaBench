
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef double float8 ;
struct TYPE_6__ {int y; int x; } ;
struct TYPE_5__ {int y; int x; } ;
struct TYPE_7__ {TYPE_2__ low; TYPE_1__ high; } ;
typedef TYPE_3__ BOX ;


 scalar_t__ float8_le (int ,int ) ;
 int float8_mi (int ,int ) ;
 double float8_mul (int ,int ) ;
 double get_float8_infinity () ;
 scalar_t__ isnan (int ) ;

__attribute__((used)) static float8
size_box(const BOX *box)
{







 if (float8_le(box->high.x, box->low.x) ||
  float8_le(box->high.y, box->low.y))
  return 0.0;






 if (isnan(box->high.x) || isnan(box->high.y))
  return get_float8_infinity();
 return float8_mul(float8_mi(box->high.x, box->low.x),
       float8_mi(box->high.y, box->low.y));
}
