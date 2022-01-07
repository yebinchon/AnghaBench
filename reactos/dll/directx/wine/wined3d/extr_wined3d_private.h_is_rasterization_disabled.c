
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rasterizer_stream_idx; } ;
struct TYPE_5__ {TYPE_1__ so_desc; } ;
struct TYPE_6__ {TYPE_2__ gs; } ;
struct wined3d_shader {TYPE_3__ u; } ;
typedef int BOOL ;


 scalar_t__ WINED3D_NO_RASTERIZER_STREAM ;

__attribute__((used)) static inline BOOL is_rasterization_disabled(const struct wined3d_shader *geometry_shader)
{
    return geometry_shader
            && geometry_shader->u.gs.so_desc.rasterizer_stream_idx == WINED3D_NO_RASTERIZER_STREAM;
}
