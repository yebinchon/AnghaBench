
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gs_vb_data {int dummy; } ;


 int GS_FLIP_U ;
 int GS_FLIP_V ;
 int assign_sprite_uv (float*,float*,int) ;
 int build_sprite (struct gs_vb_data*,float,float,float,float,float,float) ;

__attribute__((used)) static inline void build_sprite_norm(struct gs_vb_data *data, float fcx,
         float fcy, uint32_t flip)
{
 float start_u, end_u;
 float start_v, end_v;

 assign_sprite_uv(&start_u, &end_u, (flip & GS_FLIP_U) != 0);
 assign_sprite_uv(&start_v, &end_v, (flip & GS_FLIP_V) != 0);
 build_sprite(data, fcx, fcy, start_u, end_u, start_v, end_v);
}
