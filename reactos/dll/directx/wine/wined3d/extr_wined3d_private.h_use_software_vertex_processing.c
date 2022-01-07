
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct wined3d_device {int softwareVertexProcessing; TYPE_1__ create_parms; int * shader_backend; } ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int WINED3DCREATE_MIXED_VERTEXPROCESSING ;
 int WINED3DCREATE_SOFTWARE_VERTEXPROCESSING ;
 int glsl_shader_backend ;

__attribute__((used)) static inline BOOL use_software_vertex_processing(const struct wined3d_device *device)
{
    if (device->shader_backend != &glsl_shader_backend)
        return FALSE;

    if (device->create_parms.flags & WINED3DCREATE_SOFTWARE_VERTEXPROCESSING)
        return TRUE;

    if (!(device->create_parms.flags & WINED3DCREATE_MIXED_VERTEXPROCESSING))
        return FALSE;

    return device->softwareVertexProcessing;
}
