
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int float8 ;
struct TYPE_3__ {int radius; } ;
typedef TYPE_1__ CIRCLE ;


 int M_PI ;
 int float8_mul (int ,int ) ;

__attribute__((used)) static float8
circle_ar(CIRCLE *circle)
{
 return float8_mul(float8_mul(circle->radius, circle->radius), M_PI);
}
