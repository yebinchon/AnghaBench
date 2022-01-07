
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quat {float x; float y; float z; float w; } ;
struct matrix3 {int t; int z; int y; int x; } ;


 float quat_dot (struct quat const*,struct quat const*) ;
 int vec3_set (int *,float,float,float) ;
 int vec3_zero (int *) ;

void matrix3_from_quat(struct matrix3 *dst, const struct quat *q)
{
 float norm = quat_dot(q, q);
 float s = (norm > 0.0f) ? (2.0f / norm) : 0.0f;

 float xx = q->x * q->x * s;
 float yy = q->y * q->y * s;
 float zz = q->z * q->z * s;
 float xy = q->x * q->y * s;
 float xz = q->x * q->z * s;
 float yz = q->y * q->z * s;
 float wx = q->w * q->x * s;
 float wy = q->w * q->y * s;
 float wz = q->w * q->z * s;

 vec3_set(&dst->x, 1.0f - (yy + zz), xy + wz, xz - wy);
 vec3_set(&dst->y, xy - wz, 1.0f - (xx + zz), yz + wx);
 vec3_set(&dst->z, xz + wy, yz - wx, 1.0f - (xx + yy));
 vec3_zero(&dst->t);
}
