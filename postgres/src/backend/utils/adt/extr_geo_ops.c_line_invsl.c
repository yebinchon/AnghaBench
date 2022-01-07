
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef double float8 ;
struct TYPE_3__ {int A; int B; } ;
typedef TYPE_1__ LINE ;


 double DBL_MAX ;
 scalar_t__ FPzero (int ) ;
 double float8_div (int ,int ) ;

__attribute__((used)) static inline float8
line_invsl(LINE *line)
{
 if (FPzero(line->A))
  return DBL_MAX;
 if (FPzero(line->B))
  return 0.0;
 return float8_div(line->B, line->A);
}
