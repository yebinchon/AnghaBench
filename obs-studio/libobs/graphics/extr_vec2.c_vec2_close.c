
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec2 {int y; int x; } ;


 scalar_t__ close_float (int ,int ,float) ;

int vec2_close(const struct vec2 *v1, const struct vec2 *v2, float epsilon)
{
 return close_float(v1->x, v2->x, epsilon) &&
        close_float(v1->y, v2->y, epsilon);
}
