
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {float x; float y; float z; float w; } ;
struct matrix4 {TYPE_2__ z; TYPE_2__ t; TYPE_2__ y; TYPE_2__ x; } ;
struct TYPE_4__ {struct matrix4 cur_proj; } ;
typedef TYPE_1__ gs_device_t ;


 int vec4_zero (TYPE_2__*) ;

void device_frustum(gs_device_t *device, float left, float right, float top,
      float bottom, float near, float far)
{
 struct matrix4 *dst = &device->cur_proj;

 float rml = right - left;
 float tmb = top - bottom;
 float nmf = near - far;
 float nearx2 = 2.0f * near;

 vec4_zero(&dst->x);
 vec4_zero(&dst->y);
 vec4_zero(&dst->z);
 vec4_zero(&dst->t);

 dst->x.x = nearx2 / rml;
 dst->z.x = (left + right) / rml;

 dst->y.y = nearx2 / tmb;
 dst->z.y = (bottom + top) / tmb;

 dst->z.z = (far + near) / nmf;
 dst->t.z = 2.0f * (near * far) / nmf;

 dst->z.w = -1.0f;
}
