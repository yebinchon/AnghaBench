
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_resource {scalar_t__ type; } ;
typedef unsigned int DWORD ;


 int FIXME (char*,int ) ;
 scalar_t__ WINED3D_RTYPE_TEXTURE_2D ;
 int debug_d3dresourcetype (scalar_t__) ;
 int texture_from_resource (struct wined3d_resource*) ;
 unsigned int wined3d_texture_get_gl_buffer (int ) ;

__attribute__((used)) static inline DWORD context_generate_rt_mask_from_resource(struct wined3d_resource *resource)
{
    if (resource->type != WINED3D_RTYPE_TEXTURE_2D)
    {
        FIXME("Not implemented for %s resources.\n", debug_d3dresourcetype(resource->type));
        return 0;
    }

    return (1u << 31) | wined3d_texture_get_gl_buffer(texture_from_resource(resource));
}
