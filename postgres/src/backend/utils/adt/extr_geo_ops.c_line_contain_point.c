
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int C; int B; int A; } ;
struct TYPE_5__ {int y; int x; } ;
typedef TYPE_1__ Point ;
typedef TYPE_2__ LINE ;


 int FPzero (int ) ;
 int float8_mul (int ,int ) ;
 int float8_pl (int ,int ) ;

__attribute__((used)) static bool
line_contain_point(LINE *line, Point *point)
{
 return FPzero(float8_pl(float8_pl(float8_mul(line->A, point->x),
           float8_mul(line->B, point->y)),
       line->C));
}
