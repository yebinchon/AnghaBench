
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* float8 ;
struct TYPE_3__ {void* y; void* x; } ;
typedef TYPE_1__ Point ;



__attribute__((used)) static inline void
point_construct(Point *result, float8 x, float8 y)
{
 result->x = x;
 result->y = y;
}
