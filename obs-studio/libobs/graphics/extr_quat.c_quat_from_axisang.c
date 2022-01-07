
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quat {float x; float y; float z; int w; } ;
struct axisang {float w; float x; float y; float z; } ;


 int cosf (float) ;
 float sinf (float) ;

void quat_from_axisang(struct quat *dst, const struct axisang *aa)
{
 float halfa = aa->w * 0.5f;
 float sine = sinf(halfa);

 dst->x = aa->x * sine;
 dst->y = aa->y * sine;
 dst->z = aa->z * sine;
 dst->w = cosf(halfa);
}
