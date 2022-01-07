
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vec2 {int dummy; } ;
struct gs_vb_data {scalar_t__ points; TYPE_1__* tvarray; } ;
struct TYPE_2__ {struct vec2* array; } ;


 int vec2_set (struct vec2*,float,float) ;
 int vec3_set (scalar_t__,float,float,float) ;
 int vec3_zero (scalar_t__) ;

__attribute__((used)) static void build_sprite(struct gs_vb_data *data, float fcx, float fcy,
    float start_u, float end_u, float start_v, float end_v)
{
 struct vec2 *tvarray = data->tvarray[0].array;

 vec3_zero(data->points);
 vec3_set(data->points + 1, fcx, 0.0f, 0.0f);
 vec3_set(data->points + 2, 0.0f, fcy, 0.0f);
 vec3_set(data->points + 3, fcx, fcy, 0.0f);
 vec2_set(tvarray, start_u, start_v);
 vec2_set(tvarray + 1, end_u, start_v);
 vec2_set(tvarray + 2, start_u, end_v);
 vec2_set(tvarray + 3, end_u, end_v);
}
